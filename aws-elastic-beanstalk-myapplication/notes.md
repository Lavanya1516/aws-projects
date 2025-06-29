# Deployment Notes – Elastic Beanstalk Node.js App

## 🔨 Environment Details

- **Application Name**: MyApplication
- **Environment Name**: MyApplication-dev
- **Platform**: Node.js 22
- **OS**: Amazon Linux 2023 (v6.6.0)
- **Environment Type**: Single Instance (No load balancer)

## ✅ IAM Roles

- Created `aws-elasticbeanstalk-service-role`
  - Attached: `AWSElasticBeanstalkEnhancedHealth`, `AWSElasticBeanstalkManagedUpdatesCustomerRolePolicy`

- Created EC2 instance profile: `aws-elasticbeanstalk-ec2-role`
  - Attached: `AWSElasticBeanstalkWebTier`, `AWSElasticBeanstalkWorkerTier`, `AWSElasticBeanstalkMulticontainerDocker`

## 🚀 Deployment Flow

1. Created the application via Elastic Beanstalk console
2. Chose platform: **Node.js 22**
3. Selected option: **Single instance (dev/testing)**
4. Uploaded sample app code or used default
5. Deployed and monitored environment
6. Observed infrastructure created by **CloudFormation stack**
7. Accessed app via auto-generated domain

## 🌐 Example Public URL

- http://myapplication-dev.eba-4p77psq3.us-east-1.elasticbeanstalk.com/


## 🔍 Additional Features Explored

- Environment health monitoring
- Log file access from environment
- Application versioning for future updates

