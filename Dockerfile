# 1. Base image with Python installed
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy project files into the container
COPY . /app

# 4. Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# 5. Default command to run when the container starts (replace 'main.py' with your script name)
CMD ["python", "main.py"]