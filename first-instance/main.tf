provider "aws" {
  region = "us-east-1"
}


resource aws_instance my_first_insntace {

    ami =  "ami-0aa7d40eeae50c9a9"
    instance_type =  "t3.micro"
    tags = {
        "Name" = "My first instance from TF" # Nombre del recurso
        "Developer" = "CrkJohn"
    }
}



# Terraform validate -> Validate if the syntaxis is correct
# Terraform plan -> Simula una ejecuccion! verifica que se va a crear en el terraform
# Terraform apply -> Desplega 
# Terraform show -> muestra un status de lo que se corrio.
# Terraform destroy -> elimina todos los recursos
# terraform.tfstate = Guarda todo el estado de la infraestructura y por ello critico!!!! 