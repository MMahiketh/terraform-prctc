variable "ingress_ports" {
  type = list(map(any))
  default = [
    {
      port        = 22
      description = "Open ssh port"
    },
    {
      port        = 8080
      description = "Open application port"
    },
    {
      port        = 3306
      description = "Open mysql port"
    },
    {
      port        = 80
      description = "Open http port"
    }
  ]
}