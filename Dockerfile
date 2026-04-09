FROM nginx:alpine

# Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Statik anasayfa
COPY index.html /usr/share/nginx/html/index.html

# CDN asset'leri (varsa)
COPY cdn/ /usr/share/nginx/html/cdn/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
