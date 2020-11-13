bundle exec jekyll build --baseurl=/~zyliu8 && \
echo "build successful, now uploading to cse server, cse vpn connection required" && \
chmod -R 777 _site && \
scp -qp -r _site/* zyliu8@linux9.cse.cuhk.edu.hk:~/www
