FROM       alpine:3.12
RUN        apk add tar
ADD        https://github.com/xuri/aurora/releases/download/2.2/aurora_linux_amd64_v2.2.tar.gz ./
RUN        tar -xzf aurora_linux_amd64_v2.2.tar.gz

FROM       scratch
COPY       --from=0 aurora .
ENTRYPOINT ["/aurora"]
