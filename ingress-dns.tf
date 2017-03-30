resource "aws_route53_record" "external_wildcard" {
  name = "*.${var.domain_names["external"]}"
  type = "A"
  zone_id = "${module.common_dns.domain_zone_ids["external"]}"
  alias {
    evaluate_target_health = true
    name = "a2ee530e2157311e7becf12e68b3debd-860814901.us-east-1.elb.amazonaws.com"
    zone_id = "Z35SXDOTRQ7X7K"
  }
}

resource "aws_route53_record" "internal_wildcard" {
  name = "*.${var.domain_names["internal"]}"
  type = "A"
  zone_id = "${module.common_dns.domain_zone_ids["internal"]}"
  alias {
    evaluate_target_health = true
    name = "a2ee530e2157311e7becf12e68b3debd-860814901.us-east-1.elb.amazonaws.com"
    zone_id = "Z35SXDOTRQ7X7K"
  }
}

