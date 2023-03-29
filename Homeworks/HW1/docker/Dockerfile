FROM sysbench_ubuntu:v1 

COPY main_docker.sh /main_docker.sh
COPY cpu.sh /cpu.sh
COPY file.sh /file.sh

RUN chmod +x main_docker.sh
RUN chmod +x cpu.sh
RUN chmod +x file.sh

ENTRYPOINT bash main_docker.sh