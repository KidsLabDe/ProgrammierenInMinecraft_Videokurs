#!/bin/bash

# Überprüfen, ob pptx2md installiert ist
if ! command -v pptx2md &> /dev/null; then
    echo "pptx2md ist nicht installiert. Bitte installieren Sie es zuerst."
    echo "Installationshinweis: pip install pptx2md"
    exit 1
fi

# Zählen der gefundenen .pptx Dateien
pptx_files=(*.pptx)
count=${#pptx_files[@]}

if [ $count -eq 0 ]; then
    echo "Keine .pptx Dateien im aktuellen Verzeichnis gefunden."
    exit 0
fi

echo "Konvertiere $count .pptx Dateien zu Markdown..."

# Für jede .pptx Datei im aktuellen Verzeichnis
for file in *.pptx; do
    # Überprüfen, ob es sich tatsächlich um eine Datei handelt
    if [ -f "$file" ]; then
        # Basis-Dateiname ohne Erweiterung extrahieren
        basename="${file%.pptx}"
        
        # Ausgabedateiname erstellen
        output="$basename.md"
        
        echo "Konvertiere: $file zu $output"
        
        # pptx2md Befehl ausführen
        pptx2md "$file" -o "$output"
        
        # Prüfen, ob die Konvertierung erfolgreich war
        if [ $? -eq 0 ]; then
            echo "✓ Erfolgreich konvertiert: $output"
        else
            echo "✗ Fehler bei der Konvertierung von $file"
        fi
    fi
done

echo "Konvertierung abgeschlossen."
