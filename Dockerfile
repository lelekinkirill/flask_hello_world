FROM python:3.10
# Create app directory
WORKDIR /app

# Install app dependencies
COPY src/requirements.txt ./

ENV PYTHONPATH=./packages


# Bundle app source
COPY src /app

EXPOSE 8080
CMD [ "python", "server.py" ]
