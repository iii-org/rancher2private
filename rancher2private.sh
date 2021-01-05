#!/bin/bash
echo '增加執行權限'
sudo chmod +x *
echo '從Docker Hub pull(下載) rancher 2.4.5 官方必要Image中....'
sudo ./rancher-save-images.sh --image-list ./rancher-linux-images.txt
echo '下載完成並儲存於壓縮檔案 準備登入Harbor (private registry)....'
sudo docker login 10.20.0.67:5443 -u admin -p IIIdevops123!
echo '登入完成後準備進行上傳Image2Harbor....'
sudo ./rancher-load-images.sh --image-list ./rancher-linux-images.txt --registry 10.20.0.67:5443
echo '完成上傳'
