provider "aws" {
  region = "us-east-1"
}

resource aws_instance my_first_insntace {

    ami =  var.amis.amazon
    instance_type =  var.example_variable
    ebs_optimized = var.ebs_opt
    cpu_core_count = var.core_count
    tags = {
        "Name" = "My first instance from TF" # Nombre del recurso
        "Developer" = "CrkJohn"
        "Environment" = var.environment[1]
    }
}

output "instance_public_ip" {

    value = aws_instance.my_first_insntace.public_ip
}

# terraform plan -var example_variable="t3.micro"
# Terraform validate -> Validate if the syntaxis is correct
# Terraform plan -> Simula una ejecuccion! verifica que se va a crear en el terraform
# Terraform apply -> Desplega 
# Terraform show -> muestra un status de lo que se corrio.
# Terraform destroy -> elimina todos los recursos
# terraform.tfstate = Guarda todo el estado de la infraestructura y por ello critico!!!! 