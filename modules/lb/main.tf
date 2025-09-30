resource "aws_lb" "public_lb" {
    name = "${var.environment}-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = var.security_groups
    subnets = var.subnets

    enable_deletion_protection = false 
}


resource "aws_lb_target_group" "public_instances" {
    name = "${var.environment}-tg"
    port = 80
    protocol = "HTTP"
    vpc_id = var.vpc_id 

    health_check {
        path = "/"
        interval = 30
        timeout = 5
        healthy_threshold = 3
        unhealthy_threshold = 3
        matcher = "200"
    }
}

resource "aws_lb_target_group_attachment" "public_instances" {
    count = length(var.bastion_public_ip)
    target_group_arn = aws_lb_target_group.public_instances.arn
    target_id = var.bastion_instance_id[count.index]
    port = 80
}

resource "aws_lb_listener" "http" {
    load_balancer_arn = aws_lb.public_lb.arn
    port = 80
    protocol = "HTTP"

    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.public_instances.arn
    }
}