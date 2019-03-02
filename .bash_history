tar -xz --strip 1 -f Downloads/cougar-master.tar.gzz
g c gh:kingpearl/panther.git
rmdir .git && g init && g ca && g remote add origin gh:kingpearl/panther.git && g push origin master
vagrant up && vagrant ssh
date '+%s'
docker build -t kingpearl/cougar:0.9.41 .
docker push kingpearl/cougar:0.9.41
docker run -p 3000:3000 -itv ~/:/docker kingpearl/cougar:0.9.41 bash
docker rm $(docker ps -aqf status=exited)
