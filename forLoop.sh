 #!/bin/bash
 # Demonstriert die Verwendung von for mit Argumenten
 # afor1.sh
 for datei in "$@"
 do
    [ -f $datei ] && echo "$datei: Reguläre Datei"
    [ -d $datei ] && echo "$datei: Verzeichnis"
    [ -b $datei ] && echo "$datei: Gerätedatei(block special)"
    [ -c $datei ] && echo "$datei: Gerätedatei(character special)"
    [ ! -e $datei ] && echo "$datei: existiert nicht"
 done

