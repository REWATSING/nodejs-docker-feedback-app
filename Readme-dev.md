$ docker build -t vishnu420/feedback-nodejs-app-1:dev-v1 .


$ docker run -d --name feedback-pv-nodemon -v feedback-named-pv:/myjsapp/named-pv -v "C:\Users\Dashu\Downloads\data-volumes-01-starting-setup\data-volumes-01-starting-setup:/myjasapp" -p 3000:80 vishnu420/feedback-nodejs-app-1:dev-v1

