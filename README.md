**AWS-EKS-cluster-for-multiple-customers-Cluster-using-Terraform-Modules**
![image](https://github.com/Saurabh-DevOpsVoyager77/AWS-EKS-cluster-for-multiple-customers-Cluster-using-Terraform-Modules/assets/147520862/7b0d8a8c-1c60-4027-bce6-6dbf3c9e8e8e)

This guide will walk you through the process of setting up an AWS Elastic Kubernetes Service (EKS) cluster using Terraform. By following these steps, you'll be able to provision an EKS cluster on AWS and configure it for your specific requirements.

**Prerequisites**

Before you begin, ensure that you have the following prerequisites:

  Terraform installed on your local machine.
  AWS CLI installed and configured with appropriate IAM permissions.

**Step 1: Clone the Repository**

Clone the Terraform configuration repository for creating the EKS cluster:

``git clone https://github.com/Saurabh-DevOpsVoyager77/AWS-EKS-cluster-for-multiple-customers-Cluster-using-Terraform-Modules.git``

``cd AWS-EKS-cluster-for-multiple-customers-Cluster-using-Terraform-Modules``

**Step 2: Set AWS Credentials**

Ensure that you have configured your AWS CLI with the necessary credentials and AWS region:

``aws configure``

**Step 3: Initialize the Working Directory**

Run the following command in the working directory to initialize Terraform:

``terraform init``

This command downloads all the necessary providers and initializes the Terraform backend.

**Step 4: Create a Terraform Plan**

Generate a Terraform execution plan to preview the changes:

``terraform plan``

The terraform plan command provides an overview of the resources that Terraform will create or modify.

**Step 5: Apply the Terraform Plan**

Apply the Terraform plan to create the EKS cluster on AWS:

``terraform apply``

Terraform will create various AWS resources, including the VPC, Route Table, Subnets, IAM Role, Internet Gateway, Security Group, Worker Nodes, and the EKS Cluster itself.

**Step 6: Configure Kubectl**

Once the EKS cluster is created, configure kubectl to interact with it. Run the following commands:

``curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.23.17/2023-05-11/bin/linux/amd64``

``openssl sha1 -sha256 kubectl``

``chmod +x ./kubectl``

``mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH``

``kubectl version --short --client``

These commands download and configure kubectl for use with your EKS cluster.

**Step 7: Update Kubeconfig**

Replace <your-cluster-name> and <your-region> with your EKS cluster name and AWS region, respectively:

``aws eks update-kubeconfig --name <your-cluster-name> --region <your-region>``

This command updates your kubeconfig file with the necessary credentials to access your EKS cluster.

**Step 8: Verify Cluster**

Verify that your EKS cluster is running and accessible by running:

``kubectl get nodes``

You should see a list of worker nodes in your cluster, indicating that your EKS cluster is up and runningin AWS Console.

That's it! You've successfully created an AWS EKS cluster using Terraform. Feel free to explore and customize your cluster as needed for your specific use cases.

















