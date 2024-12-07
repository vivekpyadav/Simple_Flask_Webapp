# Flask Application Deployment with Docker, AWS, and Terraform

This project demonstrates the deployment of a simple Flask web application using Docker, AWS EC2, and Terraform. The project includes Dockerization of the application, Terraform configurations for infrastructure provisioning, and (soon-to-be-added) CI/CD pipeline integration.

## Project Structure

├── .github
│   └── workflows
│       └── deploy.yml
├── ec2.tf
├── main.tf
├── my_docker_image
│   ├── app.py
│   ├── Dockerfile
│   ├── requirements.txt
│   └── templates
│       └── index.html
├── outputs.tf
├── security_groups.tf

## Prerequisites

Before running this project, ensure you have the following installed:

- Python 3.9 or later
- Docker
- Terraform (v1.4.6 or later)
- AWS CLI (configured with appropriate credentials)

```bash
git clone https://github.com/vivekpyadav/Simple_Flask_Webapp.git
```

## Steps to Deploy in Docker

1. Navigate to the `my_docker_image` directory:
```bash
cd my_docker_image
```
2. Build the Docker image
```bash
docker build -t flask-app .
```
3. Run the Docker container
```bash
docker run -p 5000:5000 flask-app

# Access the app at http://localhost:5000
```

 

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

3. CI/CD Pipeline Implementation

The CI/CD pipeline is implemented using GitHub Actions to automate the build, test, and deployment process.
Pipeline Steps:

### Build Docker Image:
The pipeline builds a Docker image of the Flask application.
The image is pushed to Docker Hub.

### Deploy Using Terraform:
Terraform provisions the AWS infrastructure and deploys the Dockerized Flask application.

Workflow File (.github/workflows/deploy.yml)

Configuring Secrets:

### Docker Hub:
Add DOCKER_USERNAME and DOCKER_PASSWORD in GitHub > Settings > Secrets and variables > Actions.
### AWS Credentials:
Add AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY with IAM user credentials.

### Running the Pipeline:

- Push changes to the main branch.
- Monitor the workflow in the Actions tab.
- Verify deployment success.





