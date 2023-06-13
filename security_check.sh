#!/bin/bash

echo -e "
  ____       _     _     _             
 / ___|  ___| |__ (_)_ __| |_ ___ _ __ 
| |  _ / _ \ '_ \| | '__| __/ _ \ '__|
| |_| |  __/ |_) | | |  | ||  __/ |   
 \____|\___|_.__/|_|_|   \__\___|_|   

Developer: Pritesh Rajput
Tool: Security Check Tool
"

read -p "Enter the website link: " url

# Run Python script
python - <<EOF "$url"
import requests
from bs4 import BeautifulSoup

def check_security_points(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')

    # Check for security points
    security_points = []

    # Check for insecure HTTP protocol
    if url.startswith('http://'):
        security_points.append(("Website is using insecure HTTP protocol.", "Switch to HTTPS protocol for secure communication."))

    # Check for missing HTTPS protocol
    if not url.startswith('http://') and not url.startswith('https://'):
        security_points.append(("Website is missing HTTPS protocol.", "Update the URL to use HTTPS for secure communication."))

    # Check for missing secure attribute in cookies
    for cookie in response.cookies:
        if not cookie.secure:
            security_points.append((f"Cookie '{cookie.name}' is missing the secure attribute.", "Set the 'secure' attribute for the cookie."))

    # Check for forms without CSRF protection
    forms = soup.find_all('form')
    for form in forms:
        csrf_token = form.find('input', {'name': 'csrf_token'})
        if not csrf_token:
            security_points.append(("Form does not have CSRF protection.", "Implement CSRF protection in the form."))

    return security_points

# Function to suggest solutions for security vulnerabilities
def suggest_solutions(security_points):
    solutions = []
    for point, solution in security_points:
        solutions.append(f"- {point}\n  Solution: {solution}")
    return solutions

# Main program
if __name__ == '__main__':
    import sys

    url = sys.argv[1]
    security_points = check_security_points(url)

    if len(security_points) == 0:
        print("No security vulnerabilities found.")
    else:
        print("Security vulnerabilities found:")
        solutions = suggest_solutions(security_points)
        for solution in solutions:
            print(solution)
EOF
