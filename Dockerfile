version: '3.3'

services:

    aapanel:
        image: aapanel/aapanel:lib
        container_name: aapanel
        ports:
            - "7800:7800"
            - "21:21"
            - "443:443"
            - "80:80"
            - "888:888"
        restart: unless-stopped
        volumes:
            - ./website_data:/www/wwwroot
            - ./mysql_data:/www/server/data
            - ./vhost:/www/server/panel/vhost
