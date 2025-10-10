#EC2 instance

resource "aws_instance" "myec2vm" {
    ami="aws_ami.amzlinux2.id"
    instance_type=var.aws_instance
    user_data = file("${path.module}/app1-install.sh")
    key_name = var.aws_key_pair
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.web-ssh.id]

   tags = {

    "Name"="Ec2 demo 2"
   }


}