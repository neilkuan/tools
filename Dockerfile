FROM --platform=linux/amd64 public.ecr.aws/ubuntu/ubuntu:20.04
WORKDIR /root
ADD https://hey-release.s3.us-east-2.amazonaws.com/hey_linux_amd64 .
RUN apt update -y && apt install -y curl netcat dnsutils && rm -rf /var/lib/apt/lists/* && chmod +x hey_linux_amd64 && mv hey_linux_amd64 hey
ENV PATH $PATH:/root/
ENTRYPOINT [""]
CMD ["tail", "-f", "/etc/hosts"]
