$env:PKG_DIR = "python"

docker logout

if (Test-Path $env:PKG_DIR) {
    Remove-Item $env:PKG_DIR
}
New-Item -ItemType directory -Path $env:PKG_DIR

docker run --rm -v ${PWD}:/foo -w /foo -it lambci/lambda:build-python3.7 pip install -r requirements.txt --no-deps -t $env:PKG_DIR
