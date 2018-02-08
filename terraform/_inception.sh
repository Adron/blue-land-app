#!/usr/bin/env bash

echo "Initialization"
terraform init

echo "Initial Plan Diff"
terraform plan

echo "Create Infrastructure"
terraform apply