### SSL certificate with traefik and letsencrypt

Docker container running traefik and portainer service

Task: 
  - Add an A record 'portainer' pointing to the public IP of the host server

Configure on server:
  - ```mkdir letsencrypt```
  - ```touch letsencrypt/acme.json```
  - ```chmod 600 letsencrypt/acme.json```

run ```docker compose up -d``` on the server and navigate to portainer.vattsopheak.xyz