variable "CREDENTIAL_FILE" {}
variable "VM_USERNAME" {}
variable "PROJECT_ID" {}
variable "REGION" {
    default="us-west1"
}
variable "ZONE" {
    default="a"
}
variable "VPC_NAME" {
     default="valeria-vpc"
}
variable "PUBLIC_SUBNET_CDIR" {
    default="10.29.1.0/24"
}
variable "PRIVATE_SUBNET_CDIR" {
    default="10.29.2.0/24"
}
variable "WEBSERVER_IP" {
    default="10.29.1.2"
}
variable "APPSERVER_IP" {
    default="10.29.2.2"
}
variable "IMAGE" {
    type="map"
    default={
        "us-west1-a"="debian-cloud/debian-9"
        "us-west2-a"="debian-cloud/debian-8"
    }
}
