resource "google_sql_database_instance" "main" {
  name             = "main-instance"
  database_version = "POSTGRES_14"
  region           = "${var.region}"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}

resource "google_spanner_instance" "example" {
  config       = "regional-us-central1"
  display_name = "Test Spanner Instance"
  num_nodes    = 1
  labels = {
    "foo" = "bar"
  }
}


resource "google_spanner_instance" "example3" {
  config       = "nam-eur-asia1"
  display_name = "Multi Regional Instance"
  num_nodes    = 2
  labels = {
    "foo" = "bar3"
  }
}

