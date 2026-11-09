# Práctica Infraestructura ComaPrint

Apache HTTP Server en el puerto 8088 y Apache Tomcat en el puerto 9090 en una máquina virtual Ubuntu (VirtualBox).


## Red de la máquina virtual

La VM está en NAT. Para entrar desde Windows puse reenvío de puertos en VirtualBox (8088 -> 8088 y 9090 -> 9090), por eso desde Windows se entra con `http://localhost:8088` y `http://localhost:9090`.

## Parte 1: Apache (puerto 8088)

```bash
sudo apt update
sudo apt install -y apache2
sudo systemctl status apache2
```

`/etc/apache2/ports.conf`

```
Listen 8088
```

`/etc/apache2/sites-available/000-default.conf`

```
<VirtualHost *:8088>
    DocumentRoot /var/www/personal
```

```bash
sudo mkdir -p /var/www/personal
sudo nano /var/www/personal/index.html
sudo chown -R www-data:www-data /var/www/personal
sudo chmod -R 755 /var/www/personal
sudo apache2ctl configtest
sudo systemctl restart apache2
curl http://localhost:8088
sudo ufw allow 8088/tcp
sudo ufw allow 9090/tcp
sudo ufw enable
```

El `index.html` está en la carpeta `apache`.

## Parte 2: Tomcat (puerto 9090)

```bash
sudo apt install -y openjdk-21-jdk
cd /tmp
wget https://archive.apache.org/dist/tomcat/tomcat-11/v11.0.26/bin/apache-tomcat-11.0.26.tar.gz
sudo mkdir -p /opt/tomcat
sudo tar -xzf apache-tomcat-11.0.26.tar.gz -C /opt/tomcat --strip-components=1
sudo nano /opt/tomcat/bin/setenv.sh
sudo sh -c 'chmod +x /opt/tomcat/bin/*.sh'
sudo sed -i 's/port="8080"/port="9090"/g' /opt/tomcat/conf/server.xml
sudo /opt/tomcat/bin/startup.sh
sudo tail -n 20 /opt/tomcat/logs/catalina.out
```

El `setenv.sh` (JAVA_HOME) está en la carpeta `tomcat`.

Los ejemplos JSP daban 403 porque Tomcat solo los deja ver desde la propia máquina. En `/opt/tomcat/webapps/examples/META-INF/context.xml` añadí la red de VirtualBox:

```
allow="127.0.0.0/8,::1/128,10.0.2.0/24"
```
