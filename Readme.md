# 🚀 Feedback Node.js App (Production Setup with Docker)

This is a containerized **Node.js Feedback App** built for **production-style environments**.  
It includes the use of:
- 🗃️ Named Volumes (for persistent storage)
- 🔗 Bind Mounts (to link local directories)
- 📦 Anonymous Volumes (for internal container usage)
- 🐳 Docker image build + push steps

---

## 📁 Project Structure

```bash
your-project/
├── Dockerfile
├── package.json
├── server.js
└── feedback/
    └── feedback.json   # example bind-mounted data


##cmd
docker build -t vishnu420/feedback-nodejs-demoapp-1:v1 .

docker run -d \
  --name feedback-pv-bindmount-anonvol \
  -v feedback-named-pv:/myjsapp/named-pv \
  -v "C:\Users\Dashu\Downloads\data-volumes-01-starting-setup\data-volumes-01-starting-setup\feedback:/myjsapp/feedback" \
  -v /myjsapp/anon-vol \
  -p 3000:80 \
  vishnu420/feedback-nodejs-demoapp-1:v1

docker volume inspect feedback-named-pv

docker volume rm feedback-named-pv


docker login

docker tag <image-id> vishnu420/feedback-nodejs-app-1:prod-v1

docker tag vishnu420/feedback-nodejs-demoapp-1:v1 vishnu420/feedback-nodejs-app-1:prod-v1

docker push vishnu420/feedback-nodejs-app-1:prod-v1

