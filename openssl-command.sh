openssl req -new -newkey rsa:2048 -days 3650 -nodes -x509 -subj "/C=NL/ST=ZuidHolland/L=Streefkerk/O=Lyghtning/OU=Development/CN=pubquiz2" -keyout ca.key -out ca.crt
openssl genrsa -out "cert.key" 2048
openssl req -new -key cert.key -out cert.csr -config openssl.cnf
openssl x509 -req -days 3650 -in cert.csr -CA ca.crt -CAkey ca.key -CAcreateserial -extensions v3_req -extfile openssl.cnf -out cert.crt
openssl x509 -inform PEM -outform DER -in cert.crt -out cert.der.crt