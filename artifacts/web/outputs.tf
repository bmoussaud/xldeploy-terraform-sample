output "elb_address" {
  value = "${aws_elb.web.dns_name}"
  }

output "host_public_ip" {
  description = "First of public IP addresses assigned to the instances, if applicable"
  value       = compact(coalescelist(aws_instance.web.*.public_ip, [""]))[0]
}



