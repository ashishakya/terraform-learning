#<block> <Parameter> {
    #  key1 = value1
#}

#provider "aws"{
#   region = "eu-west-1"
#    profile = "proshore-terraform"
#}

resource "local_file" "devops"{
    filename = "/Users/ashishakya/Projects/terraform101/gauri/terraform.txt"
    content = var.custom_content
}

output "myLocalFile"{
    value = local_file.devops.content
}