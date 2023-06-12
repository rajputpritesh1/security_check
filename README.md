# Security Check Tool

The Security Check Tool is a command-line utility that helps analyze the security of websites. It detects common security vulnerabilities such as insecure protocols, missing HTTPS, insecure cookies, and forms without CSRF protection. It provides actionable solutions to address these vulnerabilities and enhance the overall security of websites.

## Features

- Detects insecure HTTP protocol usage
- Checks for missing HTTPS protocol
- Identifies cookies without the secure attribute
- Detects forms without CSRF protection
- Provides actionable solutions for each security vulnerability

## Usage

1. Make sure you have Python installed on your system.
2. Install the required dependencies by running `pip install requests beautifulsoup4`.
3. Run the tool by executing the `security_tool.sh` script.
4. Enter the website link when prompted.
5. The tool will analyze the security of the provided website and display any vulnerabilities found along with recommended solutions.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Installation Guide

### Prerequisites
- Make sure you have Python 3.x installed on your system.

### Termux
1. Open the Termux app on your Android device.
2. Install the required packages by running the following command:
   ```
   pkg install python git
   ```
3. Clone the repository by running the following command:
   ```
   git clone https://github.com/rajputpritesh1/security-check-tool.git
   ```
4. Navigate to the project directory:
   ```
   cd security-check-tool
   ```
5. Install the dependencies by running the following command:
   ```
   pip install -r requirements.txt
   ```
6. Run the tool by executing the following command:
   ```
   python security_tool.py
   ```
   The tool will prompt you to enter the website link. Provide the URL and press Enter.
7. The tool will analyze the security of the provided website and display any vulnerabilities found along with recommended solutions.

### Kali Linux
1. Open the terminal on your Kali Linux system.
2. Clone the repository by running the following command:
   ```
   git clone https://github.com/rajputpritesh1/security-check-tool.git
   ```
3. Navigate to the project directory:
   ```
   cd security-check-tool
   ```
4. Install the dependencies by running the following command:
   ```
   pip install -r requirements.txt
   ```
5. Run the tool by executing the following command:
   ```
   python security_tool.py
   ```
   The tool will prompt you to enter the website link. Provide the URL and press Enter.
6. The tool will analyze the security of the provided website and display any vulnerabilities found along with recommended solutions.

That's it! You have successfully installed and used the Security Check Tool on Termux or Kali Linux. Feel free to explore and customize the tool according to your needs.
