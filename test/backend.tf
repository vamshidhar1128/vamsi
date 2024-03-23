terraform {
 backend "gcs" {
   bucket  ="nasa7733"
   prefix  = "terraform-state/jenkins"
   credentials = "creds_gcs.json"
 }
}
