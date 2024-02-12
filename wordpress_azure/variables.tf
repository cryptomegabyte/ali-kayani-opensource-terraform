# Define a variable for the location
variable "location" {
    description = "The region in Azure"
    default = "West Europe"
}

# Define the name of the resources
variable "name" {
    description = "Base name for resources"
    default = "wp-iac-tf"
}

# Defines the env type
variable "environment_type" {
    description = "environment type"
    default = "prod"
}

# Defines the default tags
variable "default_tags" {
    description = "Tags"
    type = map(any)
    default = {
        project = "wp-iac-tf"
        environment = "prod"
        deployed_by = "terraform"
    }
}
