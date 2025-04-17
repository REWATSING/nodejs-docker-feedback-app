# 📦 Feedback Node.js App — Dockerized Dev Environment

This project is a containerized Node.js-based feedback application built for **DevOps-style development**. It supports:

- Live code changes using `nodemon`
- Persistent `node_modules` using Docker named volume
- Optional named volume for additional data (`/myjsapp/named-pv`)
- Fully local development setup (no Docker Compose needed initially)

---

## 🧰 Tech Stack

- Node.js (Express)
- Docker (with Buildx)
- Nodemon for hot reload
- Docker named volumes
- Bind mounts for local code editing

---

## 🧱 Folder Structure

```bash
data-volumes-01-starting-setup/
├── Dockerfile
├── package.json
├── server.js
├── named-pv/                # Attached to a named volume
├── node_modules/            # Handled inside container (via volume)
└── README.md


## cmd
$ docker buildx build -t vishnu420/feedback-nodejs-app-1:dev-v1 .


$ docker run -d --name feeebackapp-dev-1 -v backup_node_modules:/myjsapp/node_modules  -v feedback-named-pv:/myjsapp/named-pv -v "C:\Users\Dashu\Downloads\data-volumes-01-starting-setup\data-volumes-01-starting-setup:/myjsapp" -p 3000:80  vishnu420/feedback-nodejs-app-1:dev-v1


# We can use $(pwd) for linux
$ docker logs ff1d39f66be7
$ docker exec -it ff1d39f66be7 bash
