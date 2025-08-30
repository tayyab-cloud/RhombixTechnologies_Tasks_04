# RhombixTechnologies_Tasks_04

## Remote Internship -  Deploy a Scalable Web Application on AWS

### Project Description
This project involved taking a basic web application and deploying it on Amazon Web Services (AWS) with a focus on scalability and high availability. The core objective was to set up a robust cloud infrastructure capable of handling varying traffic loads and ensuring continuous service.

### Key Components Deployed:

1.  **EC2 Instances (`t2.micro`):** Configured to run an Apache web server. Instances are managed by an Auto Scaling Group to ensure desired capacity and automatic recovery.
2.  **Elastic Load Balancer (ELB - Application Load Balancer):** Distributes incoming web traffic across multiple EC2 instances, ensuring no single point of failure and optimizing resource utilization.
3.  **Auto Scaling Group (ASG):** Automatically adjusts the number of EC2 instances based on demand (configured to maintain 1 instance for Free Tier compliance), providing high availability and fault tolerance. Instances are launched using a Launch Template with a user data script for automated web server setup.
4.  **S3 (Simple Storage Service):** Used for storing static website assets securely and durably.
5.  **CloudFront (Content Delivery Network - CDN):** Integrated with S3 to deliver static content with low latency and high transfer speeds to global users.

### Achieved Goals:

*   **Scalability:** The architecture is designed to scale horizontally by adding more EC2 instances via the ASG as traffic demands increase.
*   **High Availability:** Load balancing across instances (managed by ASG) and deployment across multiple Availability Zones ensure that the application remains accessible even if one instance or an entire AZ experiences issues.
*   **Faster Content Delivery:** CloudFront caches static assets at edge locations worldwide, significantly reducing load times for users.
*   **Cost-Effectiveness:** The entire solution has been meticulously designed and implemented to operate within the **AWS Free Tier limits**, demonstrating efficient resource management.

---

### Project Access & Demonstration:

You can access the deployed web application using the following links:

1.  **Dynamic Web Application (via Load Balancer):**
    *   **URL:** `http://my-scalable-webapp-alb-1895054755.us-east-1.elb.amazonaws.com/`
        Attractive Web App Page via asg
        <img width="1906" height="972" alt="DNS name" src="https://github.com/user-attachments/assets/a94ef7f5-a250-4c56-a4c2-719c1e61514e" />
    *   This will display the dynamic content served from the EC2 instance managed by the Auto Scaling Group, featuring a more attractive frontend.

2.  **Static Content (via CloudFront CDN):**
    *   **URL:** `d971imkkcxizb.cloudfront.net`
      Simple Web Page via Cloudfront
     <img width="1911" height="975" alt="Cloudfront" src="https://github.com/user-attachments/assets/93211549-a2d0-4cc9-8c42-26904c0fb418" />
    *   This demonstrates the efficient delivery of static assets (like `index.html` file) through the CDN.

