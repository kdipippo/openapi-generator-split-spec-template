# Go API Server for openapi

Example API spec

## Overview
This server was generated by the [openapi-generator]
(https://openapi-generator.tech) project.
By using the [OpenAPI-Spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate a server stub.
-

To see how to make this your own, look here:

[README](https://openapi-generator.tech)

- API version: v1
- Build date: 2024-04-24T08:43:57.713002-04:00[America/New_York]
- Generator version: 7.5.0
For more information, please visit [https://www.example-team.com/](https://www.example-team.com/)


### Running the server
To run the server, follow these simple steps:

```
go run main.go
```

To run the server in a docker container
```
docker build --network=host -t openapi .
```

Once image is built use
```
docker run --rm -it openapi
```