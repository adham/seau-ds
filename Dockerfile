FROM python:3.12-slim

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    git \
    && pip install --upgrade pip \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies from requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Set working directory
WORKDIR /workspaces
