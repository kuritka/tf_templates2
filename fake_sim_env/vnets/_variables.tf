variable "project_shortcut" {}

variable environment {}

variable "region" {}

variable "virtual_network_address_prefix" {}

variable "tags" {}


variable "newbit_size" {
  description = "Map the friendly name to our subnet bit mask"
  type        = "map"

  default = {
    //8
    size_8 = "7"  
    //16
    size_16 = "6"
    //32
    size_32  = "5"
    //64
    size_64 = "4"
    //128
    size_128  = "3"
    //256
    size_256  = "2"
    //512
    size_512  = "1"
  }
}