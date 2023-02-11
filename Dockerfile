# Pull official base Python Docker image
FROM python:3.10.6

# Set environment variables
ENV PYTHONDONTWRITEBYTEeduca=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /educa

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /educa/
RUN pip install -r requirements.txt

# Copy the Django project
COPY . /educa/
