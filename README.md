### Android applications do not work out-of-the box with the Appwrite self-hosted solution in Docker (on localhost).

### It runs on a self-signed certificate which cannot be trusted by Adnroid apps.

### Instead, setup a proxy with a custom self-signed certificate, and providue the certificate to the Android app.

# 1. Setup SSL certificate to trust Appwrite on insecure https (this uses the openssl.cnf file)

# CHANGE IP ADDRESS in openssl.cnf file accordingly!

openssl req -new -newkey rsa:2048 -days 3650 -nodes -x509 -subj "/C=NL/ST=ZuidHolland/L=Streefkerk/O=Lyghtning/OU=Development/CN=localhost" -keyout ca.key -out ca.crt
openssl genrsa -out "cert.key" 2048
openssl req -new -key cert.key -out cert.csr -config openssl.cnf
openssl x509 -req -days 3650 -in cert.csr -CA ca.crt -CAkey ca.key -CAcreateserial -extensions v3_req -extfile openssl.cnf -out cert.crt
openssl x509 -inform PEM -outform DER -in cert.crt -out cert.der.crt

# 2. Copy the generated cert.crt to ~/android/app/src/main/res/raw/cert.

# 3. Always run requests to AppWrite through proxy. The proxy is set-up with the self-signed certificate. Run the proxy with the following command:

node proxy.js

# 4. Set Appwrite Client Endpoint to <host machine IP adres>:4200. 4200 matches the port that is setup in proxy.js.

# 5. Build for Android:

ionic capacitor build android
