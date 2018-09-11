docker kill $(docker ps -q)
su -c "setenforce 0"
sudo docker build -t coleta_pa .
mkdir /home/coleta/pa 
mkdir /home/coleta/pa/config 
#chmod +777 /home/coleta
cp ./ean_sem_fotos.txt /home/coleta/pa/
sudo docker run -d  --restart always -v /home/coleta/pa/:/home/superBits/projetos/vip/coletas/paoDeAcucar/ -v  /home/coleta/pa/config/:/home/superBits/projetos/Casa_Nova/source/ColetorDeDados/arquivosDeEntidade/arquivos/modulos/PaoDeAcucar/  coleta_pa 

# /home/coleta/config:/home/superBits/projetos/Casa_Nova/source/ColetorDeDados/arquivosDeEntidade/arquivos/modulos/Mufato/

