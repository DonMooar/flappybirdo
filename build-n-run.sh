#!bin/bash
echo "Dime el nombre de tu repositorio"
read repo
echo "Versión? Ej: v1, v2... vN"
read ver
#Pull del código de github
git clone https://github.com/DonMooar/$repo.git
cd $repo
#Construyo la imagen para el contenedor
docker build --tag img-$repo-$ver
