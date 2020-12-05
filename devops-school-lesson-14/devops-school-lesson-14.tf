provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "build" {
  instance_type   = "${var.instance_type}"
  ami             = "${var.ami_id}"
  key_name        = "${var.key_name}"
  subnet_id       = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.security_group}"]
  tags = {
    Name = "build"
  }
  connection {
    type = "ssh"
    host = "${self.public_ip}"
    timeout = "5m"
    user = "ubuntu"
    private_key = "${file(var.private_key_path)}"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update && sudo apt install -y maven",
      "git clone https://git-codecommit.eu-central-1.amazonaws.com/v1/repos/simple-java-app /home/ubuntu/simple-java-app",
      "cd /home/ubuntu/simple-java-app && mvn package",
      "curl -k -X PUT -T './target/app.war' -H 'Host: 389528985827.s3.eu-central-1.amazonaws.com' -H 'Date: $(date -R)' -H 'Content-Type: application/java-archive' https://389528985827.s3.eu-central-1.amazonaws.com/app.war",
    ]
  }
}

resource "aws_instance" "prod" {
  instance_type   = "${var.instance_type}"
  ami             = "${var.ami_id}"
  key_name        = "${var.key_name}"
  subnet_id       = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.security_group}"]
  tags = {
    Name = "prod"
  }
  connection {
    type = "ssh"
    timeout = "5m"
    host = "${self.public_ip}"
    user = "ubuntu"
    private_key = "${file(var.private_key_path)}"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update && sudo apt install -y tomcat8",
      "sudo curl -k https://389528985827.s3.eu-central-1.amazonaws.com/app.war --output /var/lib/tomcat8/webapps/app.war",
      "sudo service tomcat8 restart",
    ]
  }
}
