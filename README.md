# dosbox-tasm

Run [DOSBox](https://www.dosbox.com/) in a docker container including TASM assembler software.

1. Run `make build` to build the container image
2. Run `make run` to run the container
3. Connect with a browser to your docker host e.g. http://localhost:8080

Note that all the assembler executables are mounted on drive D: and added to PATH. 
Use drive C: for storing your assembler source and binary files.
