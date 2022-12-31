# What's My IP?

A rudimentary HTTPS server that replies to any IPv4 request with its address.

## Configuring

The server is configured via the following **mandatory** environment variables:

 * `IP_ADDRESS` - The local IPv4 address on which to listen. (e.g: `"0.0.0.0"`)
 * `TCP_PORT` - The local TCP port on which to listen. (e.g: `8443`)
 * `TLS_CERTIFICATE_PATH` - A local filesystem path accessible to the server process for a file containing the server's X.509 certificate. (e.g: `"/secrets/tls.crt"`)
 * `TLS_KEY_PATH` - A local filesystem path accessible to the server process for a file containing the private key for the server's X.509 certificate. (e.g: `"/secrets/tls.key"`)

