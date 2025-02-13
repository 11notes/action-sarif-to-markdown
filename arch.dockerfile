# :: Build / sarif-to-markdown-table 
  FROM golang:1.23-alpine AS build
  COPY ./go/ /go/sarif-to-markdown-table 
  RUN set -ex; \
    cd /go/sarif-to-markdown-table; \
    go mod tidy; \
    GOOS=linux GOARCH=amd64 go build -o /usr/local/bin/sarif-to-markdown-table .;

# :: Header
  FROM 11notes/alpine:stable

# :: Run
  USER root

  # :: arguments
    ARG TARGETARCH
    ARG APP_IMAGE
    ARG APP_NAME
    ARG APP_VERSION
    ARG APP_ROOT
    ARG APP_UID
    ARG APP_GID

  # :: environment
    ENV APP_IMAGE=${APP_IMAGE}
    ENV APP_NAME=${APP_NAME}
    ENV APP_VERSION=${APP_VERSION}
    ENV APP_ROOT=${APP_ROOT}

  # :: multi-stage
    COPY --from=build /usr/local/bin/ /usr/local/bin

  # :: install application
    RUN set -ex; \
      mkdir -p ${APP_ROOT};

  # :: copy filesystem changes and set correct permissions
    COPY ./rootfs /
    RUN set -ex; \
      chmod +x -R /usr/local/bin; \
      chown -R 1000:1000 \
        ${APP_ROOT};

# :: Start
USER docker