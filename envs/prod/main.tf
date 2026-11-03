provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

module "hello" {
  source    = "../../modules/hello-app"
  namespace = "prod"
  port      = 8090
}
