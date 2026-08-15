# Nginx Log Analyser

## About the project
The goal of this project is to help me practice some basic shell scripting skills. I wrote a simple tool to analyze logs from the command line using Vagrant VM.

## Specification
Using the sample nginx access log file from ``/logs/access.log``. The log file contains the following fields:

- IP address
- Date and time
- Request method and path
- Response status code
- Response size
- Referrer
- User agent

I created a shell script that reads the log file and provides the following information:

1. Top 5 IP addresses with the most requests
2. Top 5 most requested paths
3. Top 5 response status codes
4. Top 5 user agents
