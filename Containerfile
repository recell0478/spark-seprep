FROM alpine
WORKDIR Rachel-Pastreich
ADD assign6.py 
RUN chmod +x /mydir/assign6.py
RUN apk add curl
CMD ./assign6.py 