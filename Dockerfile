#use an official python base image
FROM python:3.9-slim

#Set working directory inside container
WORKDIR /app

#COPY requirement and install dependencies 
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirements.txt

#Copy the  apppplication code 
COPY . .

#Expose the port flask runs on 
EXPOSE 5000

#Run the application 
CMD ["python","app.py"]
