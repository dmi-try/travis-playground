FROM busybox

COPY run.sh /run.sh
COPY test.sh /test.sh

CMD ["/run.sh"]
