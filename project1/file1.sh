#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

read -p "Enter project name: " project_name

if [[ -z "$project_name" ]]; then
    echo -e "${RED}Error: Project name can't be empty!${NC}"
    exit 1
fi

if [[ -d "$project_name" ]]; then
    echo -e "${RED}ERROR: Directory already exists${NC}"
    exit 1
fi

# Create project folder
echo -e "${BLUE}Creating project folder...${NC}"
mkdir -p "${project_name}"
cd "${project_name}"

# Initialize package.json
echo -e "${BLUE}Initializing package.json...${NC}"
npm init -y

# Set package.json to use ESM
echo -e "${BLUE}Setting type: module in package.json...${NC}"
sed -i '/^{/s/{/{\n  "type": "module",/' package.json

# Install dependencies
echo -e "${BLUE}Installing dependencies...${NC}"
npm install express cors dotenv mongoose nodemon morgan

# Add node_modules to .gitignore
echo -e "${BLUE}Adding node_modules to .gitignore...${NC}"
cat > .gitignore <<EOL
node_modules
.env
.DS_Store
npm-debug.log*
EOL

# Update scripts in package.json
echo -e "${BLUE}Adding start/dev scripts...${NC}"
npm set-script start "node src/server.js"
npm set-script dev "nodemon src/server.js"

# Create folder structure
echo -e "${BLUE}Creating folder structure...${NC}"
mkdir -p src controllers routes config

# Create dotenv file
echo -e "${BLUE}Creating .env file...${NC}"
cat > .env <<EOL
PORT=3500
NODE_ENV=development
EOL

# Create server.js
echo -e "${BLUE}Creating src/server.js...${NC}"
cat > src/server.js <<EOL
import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import morgan from "morgan";
import userRoute from "./routes/userRoute.js";

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

// Routes
app.use("/api/users", userRoute);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(\`Server running on http://localhost:\${PORT}\`);
});
EOL

echo -e "${GREEN}✅ Project setup complete!${NC}"


# Create User router
echo -e "$"