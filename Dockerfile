FROM metabase/metabase:latest

ENV CHAMBER_VERSION=v2.9.1

RUN \
  wget -q "https://github.com/segmentio/chamber/releases/download/$CHAMBER_VERSION/chamber-$CHAMBER_VERSION-linux-amd64" \
  && mv "chamber-$CHAMBER_VERSION-linux-amd64" /usr/local/bin/chamber \
  && chmod +x /usr/local/bin/chamber

ENTRYPOINT ["chamber", "exec", "metabase", "--"]
CMD ["/app/run_metabase.sh"]
