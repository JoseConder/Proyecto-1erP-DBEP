FROM debian
WORKDIR /app
COPY ./PPDBP23.sh /app/PPDBP23.sh
ARG opcion
SHELL ["/bin/bash", "-c"]
RUN chmod +x /app/PPDBP23.sh
ENTRYPOINT ["/app/PPDBP23.sh"]
CMD ["$opcion"]

