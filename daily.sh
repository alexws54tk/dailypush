cd ~/dailypush/
echo -n "." >> README.md
sed -i -re 's/(\.{80})/\1\n/g' README.md
git add *
git commit -m 'New changes'
git push origin master
