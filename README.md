# Terraform AWS Infrastructure Project

## 📌 Project Overview
This project provisions AWS infrastructure using Terraform.

It demonstrates Infrastructure as Code (IaC) concepts by creating and managing cloud resources in a structured and automated way.

---

## 🛠 Technologies Used
- Terraform
- AWS
- Git & GitHub

---

## 📂 Project Structure

```
├── main.tf
├── variable.tf
├── README.md
└── .gitignore
```

---

## 🚀 How to Use

### 1️⃣ Initialize Terraform
```
terraform init
```

### 2️⃣ Validate Configuration
```
terraform validate
```

### 3️⃣ Plan Infrastructure
```
terraform plan
```

### 4️⃣ Apply Changes
```
terraform apply
```

---

## 🔒 Important Notes
- `.terraform/` folder is ignored
- `terraform.tfstate` files are not pushed to GitHub
- Always review plan before apply

---


## Terraform Workspaces

This project uses Terraform workspaces to manage multiple environments:

- dev
- prod

Instance type changes dynamically based on the selected workspace.

Commands used:

terraform workspace new dev
terraform workspace new prod
terraform workspace select dev
terraform workspace select prod
Configured remote backend with S3 and DynamoDB locking
with Amazon Web Service{AWS}

# 👨‍💻 Author
Saikumar  
DevOps & Cloud Enthusiast
       $$THANK YOU4$$