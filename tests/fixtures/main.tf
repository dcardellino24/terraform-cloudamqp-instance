module "cloudamqp" {
  source = "../.."

  name   = "Terraform Test"
  plan   = "lemur"
  region = "google-compute-engine::europe-west1"
}