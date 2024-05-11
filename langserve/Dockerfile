FROM python:3.9-slim

# Set the working directory
WORKDIR /app

COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY langserve/ /app

EXPOSE 8000

CMD ["python", "serve.py"]