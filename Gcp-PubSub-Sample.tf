resource "google_pubsub_topic" "tp-negocio-ex" {
  name = "tp-negocio-ex"
}

resource "google_pubsub_subscription" "sb-negocio-ex" {
  name  = "sb-negocio-ex"
  topic = google_pubsub_topic.tp-negocio-ex.name

  ack_deadline_seconds = 20
 

  push_config {
    push_endpoint = ""

    attributes = {
      x-goog-version = "v1"
    }
  }
}