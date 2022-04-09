sudo dd if=/dev/sda conv=sync,noerror bs=64K | gzip -c > panther.img.gz
gunzip -c panther.img.gz | sudo dd bs=64K of=/dev/sda
tar -xz --strip 1 -f Downloads/cougar-master.tar.gz
date '+%s'
docker build -t kingpearl/cougar:0.9.41 .
docker push kingpearl/cougar:0.9.41
docker run -p 3000:3000 -itv ~/:/docker kingpearl/cougar:0.9.41 bash
docker rm $(docker ps -aqf status=exited)
