FROM shaarli/shaarli

RUN cd /etc \
  && sed -i 's/nginx:x:100:101:/nginx:x:1000:1000:/g' passwd \
  && sed -i 's/nginx:x:101/nginx:x:1000/g' group  \
  && cd /var/www \
  && chown -R nginx: shaarli