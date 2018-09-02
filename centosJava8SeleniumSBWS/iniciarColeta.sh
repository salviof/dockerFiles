su -c "setenforce 0"
sudo docker build -t coleta_mufato .
mkdir /home/coleta 
mkdir /home/coleta/config 
#chmod +777 /home/coleta
cp ./categoria.txt /home/coleta/
sudo docker run -ti -v /home/coleta:/home/superBits/projetos/vip/coletas/mufato/ -v  /home/coleta/config:/home/superBits/projetos/Casa_Nova/source/ColetorDeDados/arquivosDeEntidade/arquivos/modulos/Mufato/  coleta_mufato


# /home/coleta/config:/home/superBits/projetos/Casa_Nova/source/ColetorDeDados/arquivosDeEntidade/arquivos/modulos/Mufato/

