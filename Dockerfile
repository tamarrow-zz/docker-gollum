# Set the base image to Ubuntu
FROM suttang/gollum

# Clone and build docker-gollum
RUN rm -rf /root/wikidata
#RUN git clone https://1f449b3cc23d820b61d7d87e59a1c9ea03eb2f0f:x-oauth-basic@github.com/tamarrow/docker-gollum.git /root/wikidata
ADD content /root/wikidata

#CMD ["gollum", "--no-edit", "--base-path=wiki", "/docker-gollum"]
CMD ["gollum"]
