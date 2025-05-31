resource "aws_eip" "elastic-ip" {
    count = var.create_elastic_ip ? var.countsub : 0
    tags = {
        Name = "${var.environment}-elastic-ip-nat-gateway-${count.index + 1}"
        Environment = var.environment
    }

    depends_on = [ aws_internet_gateway.gw ]
}