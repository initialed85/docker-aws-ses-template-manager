# docker-aws-ses-template-manager

```shell
# build
docker build --platform=linux/amd64 -t initialed85/aws-ses-template-manager:latest -f ./Dockerfile .

# run (~/.aws needs to have the "config" and "credentials" files)
docker run --rm -it -p 3333:3333 -v ~/.aws:/root/.aws initialed85/aws-ses-template-manager:latest
```
