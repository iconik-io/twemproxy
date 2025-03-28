FROM gcc:bookworm@sha256:4e934397c1eaac263babffa0da20138052ec6098dd90830850eb168f38d55e87

COPY . /usr/src/twemproxy
WORKDIR /usr/src/twemproxy
RUN \
  autoreconf -h && \
  autoreconf -fvi && \
  ./configure && \
  make && \
  make install

ENTRYPOINT [ "nutcracker" ]
