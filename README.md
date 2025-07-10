# Node Hello World

Simple node.js app that servers "hello world"

Great for testing simple deployments to the cloud

## Run It

npm start
## trigger

# ⚙️ CI/CD Pipeline with GitHub Actions

This project uses **GitHub Actions** to automate Continuous Integration (CI) and Continuous Deployment (CD) for the node-hello application.


## 🧪 What the CI/CD Pipeline Does

Every time you **push code to the master branch** or open a **pull request** to master, the pipeline will:

1. ✅ Checkout the repository
2. ✅ Set up Node.js environment
3. ✅ Install dependencies via npm install
4. ✅ Lint the code using npm run lint
5. ✅ Build a Docker image
6. ✅ Authenticate to GitHub Container Registry (GHCR)
7. ✅ Push the Docker image to GHCR

This process ensures:
- Code is validated before deployment
- A Docker image is automatically built and published
- The latest container version is ready for deployment via Terraform


### Key Sections

#### on block (Event Triggers):

yaml
on:
  push:
    branches:
      - master
  pull_request:
    branches:
      - master



## How to run node-hello app:
### Start the container using docker

```bash
cd node-hello
docker build -t node-hello .
docker run -p 3000:3000 node-hello
```

### Check the app is working:

go to this link http://localhost:3000/ you'll see "Hello Node!" message.


### Start the container using terraform

```bash
cd terraform
terraform init
terraform plan
terraform apply
```


### Check the app is working:

Same with checking after running by docker.

### Destroy the container:

```bash
terraform destroy
```


## Note:

newrelic license key is not hardcoded in main.tf, it's stored in variables.tfvars which is in gitignore so if you need to test it you will have to create variables.tfvars and put your license key in it.
