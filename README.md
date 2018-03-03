# Python Lambda Libraries

Some Python libraries, such as pycrypto, include platform specific compiled libraries.
When building dependencies packages for AWS Lambda, it's necessary to build 64bit x86 Linux compiled libraries.

## Requirements

1. Docker

## Usage

1. Edit `Dockerfile`
2. Add your libraries to `RUN pip3 install` line
3. Run `./make_libs.sh`
4. Copy libraries from `dist` to your Lambda package
