# CloudIQ_Assessment_1_AishwaryaBhavsar
1. Write an exercise in Terraform to create the below resources in AWS.

**Project Structure** <br>
**VPC Components**<br>
**1. Create VPC:** A VPC named CloudIQ-Sample-VPC has been created with CIDR range 172.0.0.0/16
**2. Private Subnets:** 2 private subnets are created.
**3. Public Subnets:** 2 public subnets are created.
**4. EC2 Instances:** t2.micro instances created in all the subnets.
**5. Internet Gateway:** Since our public subnets have resources like EC2 instances, we will be allowing our resources to connect to the internet.
**6. Route Table:** Each subnet should be associated with a route table to control network traffic.

**Terraform Workflow Steps:**
**Step 1: _terraform init_**
**Step 2: _terraform validate_**
**Step 3: _terraform plan_**
**Step 4: _terraform deploy_**
**Step 5: _terraform destroy_**

