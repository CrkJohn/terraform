variable "example_variable" {
  type = string
}


variable "core_count" {
  type = number
}

variable "ebs_opt" {
  type = bool
}

variable "environment" {
  type    = list(string)
  default = ["test", "sand", "stg"]
}

variable "amis" {
  type = map(any)
  default = {
    "amazon" : "ami-0aa7d40eeae50c9a9"
  }
}



# Set a specific environment 
# terraform plan -var-file file.tfvars
