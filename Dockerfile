FROM ansible/ansible-runner
RUN pip install boto3 botocore
WORKDIR /runner/project