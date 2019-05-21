FROM ventx/alpine:3.6

ENV AWSCLI 1.16.96

RUN  apk --update add git openssh-client python py-pip groff && \
  pip install --upgrade pip && \
  pip install awscli==${AWSCLI}  


RUN echo "source ~/.aws/.bash_aws" >> /root/.bashrc
  
WORKDIR /work


ENTRYPOINT ["/bin/bash"]
