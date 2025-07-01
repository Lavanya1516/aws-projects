# 📩 Amazon S3 to SQS Event Notification Setup

This guide sets up an event notification from an S3 bucket to an SQS queue when objects are uploaded.

---

## ✅ Pre-requisites
- An S3 bucket with versioning optional
- An SQS queue created
- Permissions to allow S3 to send messages to SQS

---

## 🛠️ Steps

### 1. Create an SQS Queue
1. Go to the **SQS Console**
2. Click **Create Queue**
3. Name it: `s3-demo-lavanya-queue`
4. Choose Standard Queue
5. Leave default settings

---

### 2. Attach SQS Queue Policy (Allow S3)
In **Queue → Access Policy**, add this JSON:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Statement1",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "arn:aws:sqs:eu-west-1:970776446253:s3-demo-sqs"
    }
  ]
}

