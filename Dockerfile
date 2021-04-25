# Specify Python Version
FROM python:3.8-buster

# Ensure output is sent straight to the terminal 
ENV PYTHONUNBUFFERED 1

#Expose port 8000
EXPOSE 8000

# Create /code directory then set it to the working directory
RUN mkdir /code
WORKDIR /code

#Add and install requirements for application
ADD requirements.txt /code/
RUN pip install -r requirements.txt

#Add the rest of the files into /code directory
ADD . /code/

#Run Build script
CMD ["./run_web.sh"]