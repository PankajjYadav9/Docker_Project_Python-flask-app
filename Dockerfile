#Base image(OS)

FROM python:3.9-slim

#Working Directory

WORKDIR /app

#copy src code to container

COPY . .

#Run the build commands

RUN pip install -r requirements.txt

#expose port 80

EXPOSE 80

#serv the app / run the app (keep it running)

CMD ["python","run.py"]


