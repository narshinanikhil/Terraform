variable "myvalues" {
  description = "this is for each"
  type = map(object({
    itype  = string
    iname  = string
    volume = number
  }))

  default = {
    web = {
      itype  = "t3.micro"
      iname  = "web-server"
      volume = 10
    }

    app = {
      itype  = "c7i-flex.large"
      iname  = "app-server"
      volume = 15
    }

    db = {
      itype  = "m7i-flex.large"
      iname  = "db-server"
      volume = 20
    }
  }
}
