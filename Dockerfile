FROM ubuntu:22.04
RUN apt-get update
RUN chmod 777 *
ENTRYPOINT ["./terraform.sh"]
