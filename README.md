# kali-in-a-docker
A kali image with vnc and novnc.
Acces your kali docker container in a browser.
- The full one is **11.5Gb** run: `docker pull ghcr.io/tim2zg/kalifull:latest` and  `docker run -p 5900:5900 -p 8081:8081 --tty --interactive ghcr.io/tim2zg/kalifull:latest`
- The “normal” is **2.7Gb**  run: `docker pull ghcr.io/tim2zg/kali:latest` and  `docker run -p 5900:5900 -p 8081:8081 --tty --interactive ghcr.io/tim2zg/kali:latest`

You install a full kali system in a docker container and can acces via webrowser or vnc.
Ports: *5900* vnc and *8081* novnc
