FROM rclone/rclone

ENV LABEL_MAINTAINER="niveksan" \
    LABEL_VENDOR="mimalike.de" \
    LABEL_IMAGE_NAME="niveksan/rclone-cron" \
    LABEL_DESCRIPTION="Docker rclone/rclone image using crond as default entrypoint." \
    LABEL_LICENSE="GPL-3.0"

# install sqlite, curl, bash (for script)
RUN apk add --no-cache \
  sqlite \
  curl \
  bash

# copy backup script to crond daily folder
COPY backup.sh /

# copy entrypoint to usr bin
COPY entrypoint.sh /

# give execution permission to scripts
RUN chmod +x /entrypoint.sh && \
    chmod +x /backup.sh

RUN echo "0 */12 * * * /backup.sh" > /etc/crontabs/root

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/bin/sh","/entrypoint.sh"]

# docker build --network=host --no-cache -t rclone-crond:arm .