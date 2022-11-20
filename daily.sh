cd ~/dailypush/
echo -n "." >> README.md
sed -i -re 's/^(\.{144})\./\1\n./g' README.md
git add *
git commit -m "New changes $(date +"%y%m%d %H%M")"
git push origin master
