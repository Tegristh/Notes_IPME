read -p "Moyenne de la classe: " moyenne

if [[ $moyenne -ge 15 ]];then
    echo "TB"
elif [[ $moyenne -ge 10 ]];then
    echo "B"
elif [[ $moyenne -ge 5 ]];then
    echo "P"
elif [[ $moyenne -ge 0 ]]; then
    echo "Nul"
fi
