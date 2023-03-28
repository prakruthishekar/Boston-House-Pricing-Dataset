FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
# Port as a  placeholder
EXPOSE $PORT 
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app



# To deploy a Docker image, you need to use Heroku's container 
# registry and runtime, which allows you to build, push, and deploy Docker images to Heroku. You can do this by following these steps:

# Create a Dockerfile for your application.
# Build a Docker image for your application using the Dockerfile.
# Push the Docker image to the Heroku container registry.
# Deploy the Docker image to a Heroku app using the Heroku CLI or the Heroku dashboard.