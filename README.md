# CloudIQ_Assessment_1_AishwaryaBhavsar
1. Write an exercise in Terraform to create the below resources in AWS.

* **<h1>* Project Structure** </h1><br>
**VPC Components**<br>
**1. Create VPC:** A VPC named CloudIQ-Sample-VPC has been created with CIDR range 172.0.0.0/16<br>
**2. Private Subnets:** 2 private subnets are created.<br>
**3. Public Subnets:** 2 public subnets are created.<br>
**4. EC2 Instances:** t2.micro instances created in all the subnets.<br>
**5. Internet Gateway:** Since our public subnets have resources like EC2 instances, we will be allowing our resources to connect to the internet.<br>
**6. Route Table:** Each subnet should be associated with a route table to control network traffic.<br>

**Terraform Workflow Steps:**<br>
**Step 1: _terraform init_**<br>
**Step 2: _terraform validate_**<br>
**Step 3: _terraform plan_**<br>
**Step 4: _terraform deploy_**<br>
**Step 5: _terraform destroy_**<br>

