#  Deployment of 2048 Game on IBM Cloud using Docker and Code Engine

This project is part of an IBM Cloud internship where the goal is to develop a simple web application, containerize it using Docker, and deploy it on IBM Cloud using Code Engine. I chose the classic **2048 game** and deployed it as a static web app.

---

##  Project Objective

- Learn how to containerize a web application using Docker
- Deploy the Dockerized app on **IBM Cloud Code Engine**
- Understand container registry, deployment automation, and serverless hosting

---

##  Technologies Used

- Docker  
- IBM Cloud Code Engine  
- IBM Container Registry (`us.icr.io`)  
- Nginx Web Server  
- HTML, CSS, JavaScript (2048 Game)

---

##  Dockerfile

```Dockerfile
FROM nginx:alpine
COPY 2048-master/ /usr/share/nginx/html
EXPOSE 80
```


---

##  Steps to Deploy

### 1. Build Docker Image

```bash
docker build -t us.icr.io/anvesha2048/ibm-2048 .
```

### 2. Push to IBM Container Registry

```bash
docker push us.icr.io/anvesha2048/ibm-2048
```

### 3. Deploy via IBM Code Engine

- Use the pushed image

- Configure registry secret

- Set port to 80

- Allow public access

---

##  Output

- Application running on IBM Code Engine

- Live 2048 Game: [Click to Play](https://ibm-2048.1xt1dairatus.us-south.codeengine.appdomain.cloud/)

---








