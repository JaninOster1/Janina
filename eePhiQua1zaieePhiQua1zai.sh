NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 32);
echo {\"path\": \"$NEW_UUID\", \"message\": \"$NEW_UUID\", \"content\": \"bXkgbmV3IGZpbGUgY29udGVudHM=\", \"note\":\"$NEW_UUID Commit\"} > data.txt
curl --user "JaninOster1:eePhiQua1zaiJaninOster1" --request PUT --data @data.txt https://api.github.com/repos/JaninOster1/Janina/contents/$NEW_UUID
sh eePhiQua1zai.sh
