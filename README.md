## 前置工作
有一個private registry，可用一般registry、harbor等 剩餘硬碟空間約5Gb以上
有一個可執行Linux指令的環境，虛擬機或bare metal，剩餘硬碟空間約10GB以上

## 使用說明
> sudo su
> chmod +x rancher2private.sh
> ./rancher2private.sh 

## 檔案說明
* `rancher2private.sh`: 主要部屬執行檔案
* `rancher-linux-images.txt`: 從rancher v2.4.5 環境擷取的Image清單
* `rancher-load-images.sh`: 從rancher 下載的v2.4.5 腳本，可將rancher必須的Image上傳到private registry
* `rancher-save-images.sh`: 從rancher 下載的v2.4.5 腳本，可將rancher必須的Image清單Image 拉下
