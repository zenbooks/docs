FROM haskell:8.0

ENV PANDOC_VERSION "1.19.2.1"

RUN cabal update && cabal install pandoc-${PANDOC_VERSION}

WORKDIR /docs

CMD ["pandoc"]
