FROM --platform=linux/amd64 alpine
WORKDIR /root
ADD https://hey-release.s3.us-east-2.amazonaws.com/hey_linux_amd64 .
RUN apk add curl netcat-openbsd bind-tools bash --update --no-cache && chmod +x hey_linux_amd64 && mv hey_linux_amd64 hey
ENV PATH $PATH:/root/
ENTRYPOINT [""]
CMD ["tail", "-f", "/etc/hosts"]
