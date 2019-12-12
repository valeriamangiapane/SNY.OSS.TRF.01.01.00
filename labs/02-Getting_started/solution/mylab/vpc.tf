resource "google_compute_network" "valeriavpc" {
  name          =  "${var.VPC_NAME}-${random_id.random_id.hex}"
  auto_create_subnetworks = "false"
  routing_mode            = "REGIONAL" //REGIONAL or GLOBAL
}
