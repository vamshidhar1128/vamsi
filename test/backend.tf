terraform {
 backend "gcs" {
   bucket  ="nasa7733"
   prefix  = "terraform/state"
   credentials = "creds_gcs.json"
 }
}
