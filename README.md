# Flask Application Deployment with Docker, AWS, and Terraform

This project demonstrates the deployment of a simple Flask web application using Docker, AWS EC2, and Terraform. The project includes Dockerization of the application, Terraform configurations for infrastructure provisioning, and (soon-to-be-added) CI/CD pipeline integration.

## Project Structure



## Prerequisites

Before running this project, ensure you have the following installed:

- Python 3.9 or later
- Docker
- Terraform (v1.4.6 or later)
- AWS CLI (configured with appropriate credentials)

## Steps to Deploy in Docker

1. Navigate to the `my_docker_image` directory:
```bash
cd my_docker_image
```

```bash
docker build -t flask-app .
```

```bash
docker run -p 5000:5000 flask-app
```

Access the app at http://localhost:5000 .

## Deploy Using Terraform

1. Initialize terraform
```bash
terraform init
```
2. Validate the configuration
```bash
terraform validate
```
3. Apply the Terraform configuration to deploy resources
```bash
# Remove -auto-approve if you want to check.

terraform apply -auto-approve
```




