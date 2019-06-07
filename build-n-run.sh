#!bin/bash
repo="flappybirdo"
echo "Versión? Ej: v1, v2... vN"
read ver
cd /docker
#Pull del código de github, SI EXISTE ELIMINA LA CARPETA ANTERIOR
git clone https://github.com/DonMooar/$repo.git
cd $repo
#RUTA CÓDIGO DE LA APP
cp -a /home/javirr/games/$repo .
#Construyo la imagen para el contenedor con DOCKERFILE
docker build --tag img-$repo-$ver . 2>./log-img-$repo-$ver
sleep 1
#Hago el contenedor con la img creada anteriormente
docker run -d --name $repo$ver -p 80:80 img-$repo-$ver &>./log-$repo$ver-cont
if [[ $? = 0 ]]; then
echo "Contenedor creado."
echo "Podrás acceder a él mediante esta URL: http://localhost:80"
else
echo "Algo ha salido mal..."
fi
