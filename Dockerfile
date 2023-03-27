# docker image base on caddy image

FROM caddy:2.0.0-alpine

# workdir
workdir /usr/share/caddy

# copy all files 

copy . .

# expose port
expose 80

# run caddy
cmd ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile"]
