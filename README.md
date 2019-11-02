# THIS REPO IS MOVING

NOTE: we'll be moving the code in this repository to https://github.com/haskell-grpc-native .


# warp-grpc-example

You need a TLS certificate to run this example.

```
openssl genrsa -out key.pem 2048
openssl req -new -key key.pem -out certificate.csr
openssl x509 -req -in certificate.csr -signkey key.pem -out certificate.pem
```

Then you can build and run the example.

```
stack build
stack exec -- warp-grpc-example-exe
```

Now you can query it on 127.0.0.1:3000 with TLS, for instance with
https://github.com/lucasdicioccio/http2-client-grpc-example .
