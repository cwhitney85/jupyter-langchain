FROM python:3.9-slim

# Set the working directory
WORKDIR /app

COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]