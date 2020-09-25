bundle exec jekyll build --baseurl=/~zyliu8 && \
echo "build successful" && \
scp -qp -r _site/* zyliu8@linux9.cse.cuhk.edu.hk:~/www
