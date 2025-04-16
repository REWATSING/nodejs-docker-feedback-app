$ docker build -t vishnu420/feedback-nodejs-demoapp-1:v1 .

$ docker run -d --name feedback-pv-bindmount-anonvol -v feedback-named-pv:/myjsapp/named-pv -v "C:\Users\Dashu\Downloads\data-volumes-01-starting-setup\data-volumes-01-starting-setup\feedback:/myjsapp/feedback" -v /myjsapp/anon-vol -p 3000:80 vishnu420/feedback-nodejs-demoapp-1:v1

$ docker volume ls

$ docker login
$ docker tag e1a4cd48a9fe vishnu420/feedback-nodejs-app-1:prod-v1
