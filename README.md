# Building AWS Lambda Layer by Powershell and Docker on Windows
===============================================================

Since some of the python packages need to be compiled with Cython (or other compiler), we cannot compile those packages in windows directly, therefore, the powershell script in this repo build the packages with Docker (using the [image](https://hub.docker.com/r/lambci/lambda) ```lambci/lambda:build-python3.7``` used by AWS Lambda).

# How to use?
===============================================================
1. create a folder call ```python``` in the directory of the repo
2. modify ```requirements.txt```
3. run ./build_layer.ps1 in poweshell
4. zip ```python``` folder to ```<any name you like>.zip```
5. upload to AWS Lambda Layer

# Reference
===============================================================
1. [AWS Lambda Layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)

Happy coding~
