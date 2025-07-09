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
  name         = "node-hello:latest"
  build {
    context    = "../"  # Adjust path to your Dockerfile if needed
  }
}

resource "docker_container" "node_hello_container" {
  name  = "node-hello-container"
  image = docker_image.node_hello_image.name
  ports {
    internal = 3000
    external = 3000
  }
}
