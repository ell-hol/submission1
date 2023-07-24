#!/bin/bash

function devine_nombre_fichiers {
  local nombre_fichiers=$(ls -A | wc -l)
  local essai=-1

  while ((essai != nombre_fichiers)); do
    read -p "Combien de fichiers y a-t-il dans le dossier ? " essai

    if ((essai < nombre_fichiers)); then
      echo "Trop bas. Essaye encore."
    elif ((essai > nombre_fichiers)); then
      echo "Trop haut. Essaye encore."
    fi
  done

  echo "Bravo ! Il y a $essai fichiers dans le dossier."
}

# Run the function
devine_nombre_fichiers