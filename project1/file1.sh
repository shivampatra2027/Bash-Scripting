#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

read -p "Enter project name:" project_name

if [[ -z "$project_name" ]]; then
    echo -e "${RED} Error: Project name can't be empty! ${NC}";
    exit 1;
fi

# Need to create a folder..
mkdir -p ${project_name}/inside





