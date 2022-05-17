sudo -i
yum install epel-release
yum install nginx httpd vim -y
service nginx start
vim /etc/ngninx/conf.d/load-balancer.conf
echo -e "upstream backend {
 server 192.168.50.20;
 server 192.168.50.30;

}

server{
 listen 80;
 location / {
   proxy_pass http://backend/;

 } 
}"
service nginx restart
