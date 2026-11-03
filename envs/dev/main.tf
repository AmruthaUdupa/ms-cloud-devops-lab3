provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

module "hello" {
  source    = "../../modules/hello-app"
  namespace = "prod"   # Change this to "dev" if you are currently inside envs/dev
  port      = 8090     # Change this to 8080 if you are currently inside envs/dev
}

