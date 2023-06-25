
git config --global user.email "kulaisaikumar0906@gmail.com"
git config --global user.name "SaiLuckyAss"
git clone "https://${secrets.GIT_TOKEN}@github.com/SaiLuckyAss/hello-world.git" -b master
cd hello-world
git checkout -b dum
echo "some text" > test.txt
git add -all
git commit -m "this is created by ctrl"
git push -u origin dum

echo "create pull"
curl \
  -x POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${secrets.GIT_TOKEN}" \
  https://api.github.com/repos/SaiLuckyAss/hello-world/pulls \
  -d '{}'
  cd ../
