FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y \
    curl \
    vim \
    git \
    tree \
    procps \
    && apt-get clean

WORKDIR /app

RUN echo "echo '--- Basic Linux Commands ---'" > run.sh && \
    echo "echo 'Current Directory:' && pwd" >> run.sh && \
    echo "echo 'List Files:' && ls -la" >> run.sh && \
    echo "echo 'System Date:' && date" >> run.sh && \
    echo "echo 'Disk Usage:' && df -h" >> run.sh && \
    echo "echo 'Memory Usage:' && free -m" >> run.sh && \
    chmod +x run.sh

CMD ["bash", "run.sh"]
