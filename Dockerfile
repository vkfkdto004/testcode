
FROM nginx:latest


COPY index.html /usr/share/nginx/html/index.html


CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
