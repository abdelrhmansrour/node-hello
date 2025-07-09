terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "node_hello_image" {
  name = "node-hello:latest"

  build {
    context = "../"
  }
}

resource "docker_container" "node_hello_container" {
  name  = "node-hello-container"
  image = docker_image.node_hello_image.name

  ports {
    internal = 3000
    external = 3000
  }

  
  lifecycle {
    replace_triggered_by = [
      docker_image.node_hello_image
    ]
  }
}
