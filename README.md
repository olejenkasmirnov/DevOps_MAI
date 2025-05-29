# Yandex Cloud S3 simple example
## Создание s3 бакета в Yandex Cloud с помощью terraform.
В файле `main.tf` описан бакет с именем `my-bucket` и ключом доступа, состоящим из двух частей. Эти переменные описаны в этом же файле `main.tf` и вводятся вручную при запуске terraform; свойство `sensitive = true` обеспечивает безопасность - при вводе ключи не видны в консоли.

![image](https://github.com/user-attachments/assets/1ffcb338-1cb4-420d-89e3-bae12081afe1)

Пример работы показан в папке `Screenshots`.
