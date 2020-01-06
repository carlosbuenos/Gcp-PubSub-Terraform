# Gcp-PubSub-Terraform
Exemplo de criação de um Topic e uma Sbuscription - Terraform

# Links para Estudo
  https://www.terraform.io/docs/providers/google/r/pubsub_topic.html <br/>
  https://www.terraform.io/docs/providers/google/r/pubsub_subscription.html

# Selecione o projeto em que deseja executar.
 $ gcloud config set project [Projct Id] <br/>

# Passos Basicos
 # 1- Clonar o repositorio
$ git clone https://github.com/carlosbuenos/Gcp-PubSub-Terraform.git <br/>
 
 Ao clonar o repositorio será criada uma pasta com o nome do mesmo [Gcp-PubSub-Terraform]<br/>
 
 # 2- Acessar a pasta criada.
  $ cd Gcp-PubSub-Terraform
 
 # 3- Inicializar o Terraform
   $ terraform init <br/>
   
 # 4- Confirmar o que foi lido no arquivo
   $ terraform apply
   
# Conteudo do Arquivo

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

