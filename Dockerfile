FROM debian:9.5 as builder
# build: docker build . -t registry.quantnet-ai.ru/quantnet/documentation:dev
# run: docker run -p8880:80 --rm registry.quantnet-ai.ru/quantnet/documentation:dev
# push: docker push registry.quantnet-ai.ru/quantnet/documentation:dev
# urls: http://localhost:8880/documentation/en/ http://localhost:8880/documentation/ru/

RUN apt update && apt -y install curl bzip2 openssh-client \
    && curl -sSL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -bfp /usr/local \
    && rm -rf /tmp/miniconda.sh \
    && conda update conda \
    && apt -y remove curl bzip2 openssh-client \
    && apt -y autoremove \
    && apt autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log \
    && conda clean -tipsy && conda clean --all --yes

RUN  apt update && apt install make \
    && apt autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log

RUN conda install -y \
    'sphinx=3.2' \
    'recommonmark=0.6' \
     && conda clean -tipsy && conda clean --all --yes

COPY en /opt/en
RUN cd /opt/en && make html

COPY ru /opt/ru
RUN cd /opt/ru && make html

FROM nginx:1.19 as production

COPY --from=builder /opt/en/build/html /usr/share/nginx/html/documentation/en
COPY --from=builder /opt/ru/build/html /usr/share/nginx/html/documentation/ru