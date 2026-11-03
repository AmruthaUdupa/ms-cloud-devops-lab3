provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

module "hello" {
  source    = "../../modules/hello-app"
  namespace = "dev"   # Change this to "dev" if you are currently inside envs/dev
  port      = 8080 
}

