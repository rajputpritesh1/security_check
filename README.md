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

