1. User "aws configure" to enter AWS_ACCESS_KEY and AWS_SECRET_KEY.
2. cd to that folder which needs to be operated.
3. Type "terraform init" to initialize the terraform.
4. Type "terraform plan".
5. Type "terraform apply" and type "yes" to apply {This command will send all the data to aws in this form of API , then based on that data the aws will perform tasks}.
6. (Optional) Type "terraform destroy" to clean of the command and resources.