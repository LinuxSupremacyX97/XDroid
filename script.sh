#!/bin/sh

. $PWD/creds.sh

### Updater Sript For CyborgXDroid By @Kakashi_HTK/@ashwinstr ###

cd ..
echo " "
echo """### You're Running The CyborgXDroid Updater Script. ###"""
echo " "

git clone https://github.com/${username}/${repo}
cd ${repo}
git pull
git pull ${upstream}
git diff

echo " "
echo "Updating Your ${repo} Repo..."
echo " "

git add .
git commit -m "Upstreamed Merged"
git push
echo " "
echo "### Successfully Updated ###"
echo " "
echo "### NOTE: Based On The Conflicts Occured In This Merge, You mi8ght Need To Remove '<<<<<HEAD' From The Merged Repo Or It Might Crash The CyborgXDroid. ###"
echo " "
cd ..
