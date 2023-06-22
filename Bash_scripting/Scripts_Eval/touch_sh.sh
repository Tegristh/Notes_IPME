#!/bin/bash

name=$1

if [[ $# -eq 0 ]]; then
    echo "Ce script nécessite un nom en argument"
    exit
elif [[ $# -gt 1 ]];then
    echo 'Si votre nom de fichier comporte des espaces, tapez le entre ""'
    exit
fi

echo "#!/bin/bash" > $name.sh
chmod u+x $name.sh

# création du dossier final
mkdir  ~/backup ~/backup/script
# copie du fichier
cp $name.sh ~/backup/script/.
# création tarball
tar -cvf ~/backup/$name.tar --absolute-names ~/backup/script/

nano $name.sh