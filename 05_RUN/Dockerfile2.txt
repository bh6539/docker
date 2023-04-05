FROM ubuntu:16.04

ENTRYPOINT ["top"]
CMD ["-d", "10"]