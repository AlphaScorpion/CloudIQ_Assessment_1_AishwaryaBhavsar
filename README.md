# CloudIQ_Assessment_1_AishwaryaBhavsar
1. Write an exercise in Terraform to create the below resources in AWS.

<h1>Project Structure</h1><br>
<img src = "images/tree.png"><br>


<h1>VPC Components</h1><br>

**1. Create VPC:** A VPC named CloudIQ-Sample-VPC has been created with CIDR range 172.0.0.0/16<br>
<img src = "images/VPC Created.png"><br>
**2. Private Subnets:** 2 private subnets are created.<br>
**3. Public Subnets:** 2 public subnets are created.<br>
<img src = "images/4 subnets.png"><br>
**4. EC2 Instances:** t2.micro instances created in all the subnets.<br>
<img src = "images/spin EC2 .png"><br>
**5. Internet Gateway:** Since our public subnets have resources like EC2 instances, we will be allowing our resources to connect to the internet.<br>
<img src = "images/Internet Gateway.png"><br>
**6. Route Table:** Each subnet should be associated with a route table to control network traffic.<br>
<img src = "images/Route Table.png"><br>

<h1>Terraform Workflow Steps</h1><br>

**Step 1: _terraform init_:** 
* Initializes terraform environment and plugins<br>
* A hidden folder called _.terraform_ will be generated, it contains all the plugins for your platform<br>
<img src = "images/terraform init.png">
**Step 2: _terraform validate_:**
* To reformat your code and run some basic validations.<br>
<img src = "images/terraform validate.png">
**Step 3: _terraform plan_:**
* The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure.<br>
<img src = "images/terraform plan.png">
**Step 4: _terraform apply_** 
* Deploy resources to your AWS console.
<img src = "images/terraform apply.png"><br>
<img src = "images/plan and apply.png">

**Step 5: _terraform destroy_**
* This will destroy all the resources/objects created in the AWS console and will help tear down the environment.

