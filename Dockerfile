# Step 1: Use a lightweight Python base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the dependencies file to the working directory
COPY requirements.txt .

# Step 4: Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Create a non-root user and grant permissions to the /app directory
RUN useradd -m -r appuser && chown -R appuser /app

# Step 7: Switch to the non-root user
USER appuser

# Step 8: Expose the port the app runs on
EXPOSE 8080

# Step 9: Define the command to run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
