#!/bin/bash
echo '增加執行權限'
sudo chmod +x *
echo '從Docker Hub pull(下載) rancher 2.4.5 官方必要Image中....'
sudo ./rancher-save-images.sh --image-list ./rancher-linux-images.txt
echo '下載完成並儲存於壓縮檔案 準備登入Harbor (private registry)....'
read -p '輸入private registry HOST: ' private_registry
read -p 'private registry的登入帳號: ' private_registry_login
read -sp 'private registry的登入密碼: ' private_registry_password
sudo docker login $private_registry -u $private_registry_login -p $private_registry_password
echo '登入完成後準備進行上傳Image2Harbor....'
sudo ./rancher-load-images.sh --image-list ./rancher-linux-images.txt --registry $private_registry
echo '完成上傳'
