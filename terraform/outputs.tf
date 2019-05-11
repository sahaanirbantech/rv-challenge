data "aws_subnet_ids" "public" {
    vpc_id = "${aws_vpc.rvc.id}"
    depends_on = [ "aws_subnet.pub1", "aws_subnet.pub2" ]

    tags = {
        Scope = "Public"
    }
}

output "public_subnet_ids" {
  value = "${data.aws_subnet_ids.public.ids}"
}

output "vpc_rvc_id" {
    value = "${aws_vpc.rvc.id}"
}

output "subnet_rvc_pub1_id" {
    value = "${aws_subnet.pub1.id}"
}

output "subnet_rvc_pub2_id" {
    value = "${aws_subnet.pub2.id}"
}

output "subnet_rvc_prv1_id" {
    value = "${aws_subnet.prv1.id}"
}

output "subnet_rvc_prv2_id" {
    value = "${aws_subnet.prv2.id}"
}

output "config_map_aws_auth" {
  value = "${local.config_map_aws_auth}"
}

output "storage_class_custom_gp2" {
  value = "${local.storage_class_custom_gp2}"
}

output "kubeconfig" {
  value = "${local.kubeconfig}"
}

output "albingcontroller" {
  value = "${local.albingcontroller}"
}

output "alb_ing_rbac" {
  value = "${local.alb_ing_rbac}"
}
