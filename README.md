# Install Python NAOqi SDK on Mac (OS X 10.11 and later)

In OS X El Capitan (10.11), Apple added System Integrity Protection ([SIP](https://support.apple.com/en-us/HT204899 "System Integrity Protection")). This prevents programs in protected locations like /usr from calling a shared library that uses a relative reference to another shared library.

This script allows Mac users using SIP to install the NAOqi SDK on their machines.

## Install notes

Run the the python script in /src/ by using the following commands in your terminal:

    chmod +x install_pynaoqi_sdk.sh
    ./install_pynaoqi_sdk.sh

## Changelog

**0.1.0**

Initial Version

## License
[MIT](LICENSE.md "MIT")
