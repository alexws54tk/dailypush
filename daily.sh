cd ~/dailypush/
echo -n "." >> README.md
sed -i -re 's/^(\.{199})\./\1\n./g' README.md
git add *
git commit -m 'New changes'
git push origin master
wget -qO- http://radiopleer.com/info/nashe_last_tracks.txt | sed -e 's/\r//g' -e 's,</li>,,g' -re 's,^.{11},,g' >> ~/nashe_last_tracks.txt
