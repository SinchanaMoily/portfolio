# Use an official nginx image
FROM nginx:alpine

# Create the certificates directory
RUN mkdir -p /usr/share/nginx/html/certificates

# Copy the HTML, CSS, JS files, and images to the nginx html directory
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css
COPY scripts.js /usr/share/nginx/html/scripts.js
COPY Sin_pic.jpg /usr/share/nginx/html/Sin_pic.jpg
COPY certificates/095-sinchana1_page-0001.jpg /usr/share/nginx/html/certificates/095-sinchana1_page-0001.jpg
COPY certificates/095-sinchana-image_page-0001.jpg /usr/share/nginx/html/certificates/095-sinchana-image_page-0001.jpg
COPY certificates/095-Sinchana-internk8S.jpg /usr/share/nginx/html/certificates/095-Sinchana-internk8S.jpg
COPY certificates/095-sinchana-linux.jpg /usr/share/nginx/html/certificates/095-sinchana-linux.jpg
COPY certificates/095-sinchana-nano.jpg /usr/share/nginx/html/certificates/095-sinchana-nano.jpg
COPY certificates/095-sinchana-onramp_page-0001.jpg /usr/share/nginx/html/certificates/095-sinchana-onramp_page-0001.jpg
COPY certificates/095-sinchana-python.jpg /usr/share/nginx/html/certificates/095-sinchana-python.jpg
COPY certificates/095-sinchana-tb.jpg /usr/share/nginx/html/certificates/095-sinchana-tb.jpg
COPY certificates/095-sinchana-technova.jpg /usr/share/nginx/html/certificates/095-sinchana-technova.jpg
COPY certificates/095-sinchana-tiara.jpg /usr/share/nginx/html/certificates/095-sinchana-tiara.jpg
COPY certificates/095-Sinchana-verilog_page-0001.jpg /usr/share/nginx/html/certificates/095-Sinchana-verilog_page-0001.jpg
COPY certificates/Salesforce.jpg /usr/share/nginx/html/certificates/Salesforce.jpg
COPY certificates/095-sinchana-intern.jpg /usr/share/nginx/html/certificates/095-sinchana-intern.jpg
COPY certificates/pic1.jpg /usr/share/nginx/html/certificates/pic1.jpg
COPY certificates/pic2.jpg /usr/share/nginx/html/certificates/pic2.jpg
COPY cv.pdf /usr/share/nginx/html/cv.pdf
# Expose port 80
EXPOSE 80
