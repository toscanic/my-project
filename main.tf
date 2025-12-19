
+
16
−
0
resource "yandex_compute_instance" "default" {
 name = "dev-server"
 blueprint_id ="ubuntu_18_04"
 bundle_id = "medium_1-0"
 zone = "ru-central1-a"
 user_data = << -EOF
            #!/bin/bash
            sudo apt-get update
            sudo apt-get install -y apache2
            sudo systemctl start apache2
            sudo systemctl enable apache2
            EOF


}