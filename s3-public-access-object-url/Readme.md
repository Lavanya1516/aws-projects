# 🪣 S3 Bucket Public Access - Object URL Fix

## 🔧 Problem

Tried to access an object URL from my S3 bucket but received an "Access Denied" error.

## 🔍 Root Cause

The S3 bucket had no public access enabled via bucket policy.

## ✅ Fix

Updated the **bucket policy** to allow public access to all objects.

## 🔓 After: Bucket Policy (Public Access)

Refer `bucket-policy-after.json`

## 🌐 Public Object URL

https://lavanya-application-s3-demo.s3.us-east-1.amazonaws.com/kakashi+naruto.jpg

## 🧠 Learning

Always check:
- Bucket Policy permissions
- Object ACLs (if applicable)
- Block Public Access settings (global or bucket-level)


