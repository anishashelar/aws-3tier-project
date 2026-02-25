# AWS 3-Tier Architecture Project

## Project Overview
This project demonstrates a secure and highly available 3-tier web architecture on AWS.  
The application is deployed using a custom VPC with public and private subnets across two Availability Zones for high availability and fault tolerance.



## Architecture Components

### Network Layer
- Custom VPC (10.0.0.0/16)
- 2 Availability Zones (ap-south-1a, ap-south-1b)
- 2 Public Subnets
- 2 Private Application Subnets
- 2 Private Database Subnets
- Internet Gateway
- NAT Gateway (for outbound internet access from private subnets)



### Presentation Tier (Public Layer)
- Application Load Balancer (ALB)
- Accepts HTTP/HTTPS traffic from the Internet
- Distributes traffic across multiple EC2 instances



### Application Tier (Private Layer)
- EC2 instances deployed in private subnets
- Auto Scaling Group for high availability and scalability
- Instances do not have public IP
- Outbound internet access through NAT Gateway



### Data Tier (Database Layer)
- Amazon RDS MySQL (Multi-AZ)
  - Primary database in AZ1
  - Standby database in AZ2
- Database is deployed in private subnets
- Accessible only from EC2 instances (Port 3306)



## Architecture Diagram

Architecture Diagram (architecture.png)


## Traffic Flow

User → Internet → Internet Gateway → Application Load Balancer  
→ Auto Scaling EC2 (Private Subnets) → Amazon RDS  

Outbound access:  
EC2 → NAT Gateway → Internet



## Security

- EC2 instances are in private subnets (no public access)
- RDS is private and not publicly accessible
- Security Groups:
  - ALB: Allows HTTP/HTTPS from Internet
  - EC2: Allows traffic only from ALB
  - RDS: Allows MySQL (3306) only from EC2
- Network isolation using public and private subnets



## Deployment Steps

1. Created Custom VPC
2. Created Public and Private Subnets
3. Attached Internet Gateway
4. Configured NAT Gateway
5. Created Security Groups
6. Created Launch Template
7. Configured Auto Scaling Group
8. Created Application Load Balancer
9. Created Target Group
10. Launched Amazon RDS MySQL (Multi-AZ)
11. Verified application using ALB DNS



## Screenshots

All deployment steps are available in the  screenshots and folder:
- VPC creation
- Subnet configuration
- NAT Gateway
- Security Groups
- Launch Template
- Auto Scaling Group
- Load Balancer
- Target Group health
- RDS configuration
- Application output



## Outcome

- Successfully deployed a highly available and scalable web architecture
- Implemented secure network design using private subnets
- Achieved fault tolerance using Multi-AZ deployment
- Demonstrated core AWS architecture best practices



## Skills Demonstrated

- Amazon VPC
- EC2
- Auto Scaling
- Application Load Balancer
- Amazon RDS
- Networking and Security
- High Availability Architecture
- Cloud Deployment



