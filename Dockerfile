FROM hashicorp/packer:light as packer

FROM ansible/ansible-runner
RUN pip install boto3 botocore
COPY --from=packer /bin/packer /bin/packer
WORKDIR /runner/project
