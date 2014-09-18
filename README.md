simple-ca-certs
===============

A CA and some pregenerated test certs. These are not secure but are useful for testing when you need an SSL certificate and key quickly.

Works on any system with a bash shell and openssl cli tool installed.

```
[dev:simple-ca-certs]# ./sign_cert_csr.sh  testcert3
Generating RSA private key, 2048 bit long modulus
...................................+++
...............................+++
e is 65537 (0x10001)
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [US]:
State or Province Name (full name) [California]:
Locality Name (eg, city) [San Jose]:
Organization Name (eg, company) [Super Certs]:
Second Organization Name (eg, company) [Certificate Department]:
Organizational Unit Name (eg, section) [Certificate Management Unit]:
Common Name (eg, YOUR name) []: food.goo.com
Email Address []:
Using configuration from ./ca/openssl.cnf
Check that the request matches the signature
Signature ok
Certificate Details:
        Serial Number: 3145729 (0x300001)
        Validity
            Not Before: Sep 18 05:08:38 2014 GMT
            Not After : Feb  1 05:08:38 2836 GMT
        Subject:
            countryName               = US
            stateOrProvinceName       = California
            localityName              = San Jose
            organizationName          = Super Certs
            organizationName          = Certificate Department
            organizationalUnitName    = Certificate Management Unit
            commonName                = food.goo.com
        X509v3 extensions:
            X509v3 Basic Constraints:
                CA:FALSE
            Netscape Comment:
                OpenSSL Generated Certificate
            X509v3 Subject Key Identifier:
                BA:4E:39:17:0E:47:4F:CD:96:00:9C:2A:1C:BC:FA:FF:33:42:26:35
            X509v3 Authority Key Identifier:
                keyid:45:B1:4C:1E:1B:88:15:AB:CA:D7:FB:C5:06:5D:88:90:C7:08:BA:76
                DirName:/C=US/ST=California/L=San Jose/O=Super Certs/O=Certificate Department/OU=Certificate Management Unit/CN=ca.supercerts.ninja/emailAddress=admin@supercerts.ninja
                serial:BA:29:A0:74:86:2B:62:8C

Certificate is to be certified until Feb  1 05:08:38 2836 GMT (300000 days)
Sign the certificate? [y/n]: y


1 out of 1 certificate requests certified, commit? [y/n] y
Write out database with 1 new entries
Data Base Updated
```
