#!/bin/bash

clear
echo "*************************************************************************"
echo "**                                                                     **"
echo "**                        VIDEOLEZIONI DOWNLOADER                      **"
echo "**                                                                     **"
echo "**          Il tool perfetto per scaricare le lezioni che devi         **"
echo "**    ancora guardare, così da rimanere al passo con il programma!     **"
echo "**                                                                     **"
echo "**                    Developed by Paolo Zanotti © 2022                **"
echo "**                            paolozanotti.dev                         **"
echo "**                                                                     **"
echo "**                                                                     **"
echo "**                      Dependencies: FFMPEG, pbpaste                  **"
echo "*************************************************************************"

echo

echo "Copia negli appunti il link del file VIDEOMANIFEST che trovi in:"

echo

echo "Pagina di SharePoint della lezione >> Ispeziona elemento >> Rete "
echo ">> Cerca <videomanifest> e ricarica la pagina"
echo "Tasto DX su quello che esce e COPIA >> COPIA INDIRIZZO LINK"

echo

echo "Fatto? (s/n)"

read answer

if [[ "$answer" == n ]]
then
  echo "Copia il link e riavvia il programma"
  exit;
fi


link=$(pbpaste)

echo

echo "1) Scegli il nome del file:"

read nome_file

echo

echo "2) Scegli il formato del file: (mp4, etc)"

read formato_file

echo

ffmpeg -i "$link" -codec copy $nome_file.$formato_file

echo

echo "Ottimo, download completato!"
echo "Troverai il file nella cartella in cui è stato eseguito lo script"

echo