docker-compose build && docker-compose up
docker cp pdfbuilder:/pdfoutput . && cp -r pdfoutput/*.pdf .