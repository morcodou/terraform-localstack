############ Creating a Random String ############  
resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
}