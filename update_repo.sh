#!/bin/bash
# Yeni .deb dosyasını bu klasöre kopyalayıp bu scripti çalıştır
echo "Packages güncelleniyor..."
dpkg-scanpackages . /dev/null > Packages
gzip -k -f Packages
echo "Bitti. GitHub'a yükle:"
echo "  git add . && git commit -m 'v$(ls *.deb | tail -1)' && git push"
