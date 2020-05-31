# 定義：プロバイダー情報
provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
