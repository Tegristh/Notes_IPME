#!/bin/bash


# gestion des exceptions
if [[ $# -eq 1 ]] ;then
    folder=$1
elif [[ $# -gt 1 ]];then
    echo 'Si votre dossier contient des espace, nommez le entre ""'
    exit
else 
    folder=$(pwd)
fi

# Ces dossiers ne sont pas présents
# sur ma machine, à commenter si nécessaire.
mkdir -p /home/$USER/script_result/Musique
mkdir /home/$USER/script_result/Videos
mkdir /home/$USER/script_result/Documents
mkdir /home/$USER/script_result/Bazar
    

# Si le dossier existe, on lit son contenu
if [[ -d $folder ]]; then
    files=$(ls $folder)
else
    echo "Ce dossier n'existe pas!"
    exit
fi

cp $folder/*.mp3  /home/$USER/script_result/Musique
cp $folder/*.mp4  /home/$USER/script_result/Videos
cp $folder/*.txt $folder/*.pdf /home/$USER/script_result/Documents

# mv *.sh  shell_files/also_with_subdir/ || mkdir -p $_
# line found on https://stackoverflow.com/questions/547719/is-there-a-way-to-make-mv-create-the-directory-to-be-moved-to-if-it-doesnt-exis
for file in $(ls $folder); do
    if [[ -d /home/$USER/script_result/Bazar/${file#*.} ]]; then
        cp $folder/* /home/$USER/script_result/Bazar/${file#*.}/ 
    else
        mkdir /home/$USER/script_result/Bazar/${file#*.}
        cp $folder/* /home/$USER/script_result/Bazar/${file#*.}/
    fi
done


# for file in $(ls $folder | grep ".mp3$"); do
#     cp $file ~/script_result/Musique
# done

# for file in $(ls $folder | grep ".mp4$"); do
#     cp $file ~/script_result/Video
# done

# for file in $(ls $folder | grep ".txt$"); do
#     cp $file ~/script_result/Documents
# done




# mv * ~/script_result/Bazar

