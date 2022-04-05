resource "google_compute_address" "ip_address" {
  project = var.gcp_project_id
  name = "primary-ingress-ip"
  region =var.region
}

resource "google_compute_address" "gke_nat" {
  name = "gke-nat"
  region =var.region
}

resource "google_compute_address" "rairnode_api_endpoint" {
  name = "rairnode-api-endpoint"
  region = var.region
}

resource "google_compute_address" "jenkins_internal_load_balancer" {
  name = "jenkins-internal-load-balancer"
  region = var.region
  address_type = "INTERNAL"
  address      = var.jenkins_internal_private_ip
 }