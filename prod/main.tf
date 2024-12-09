module "grafana" {
  source        = "../modules/grafana"
  instance_type = var.instance_type
  region        = var.region
}
