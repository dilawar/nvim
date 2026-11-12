return {
  "charlesnicholson/plantuml.nvim",
  opts = {
    use_docker = true,
    docker_image = "plantuml/plantuml-server:jetty",
    docker_port = 8080,
    docker_remove_on_stop = true,
  }
}
