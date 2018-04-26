# provisions GCE instances 
# Not very smart - you'll need to delete the existing instances if you want to reprovision
# Works with the free-trial Google Cloud account - under 6 CPUs, can't have big SSDs
gcloud compute instances create master \
        --machine-type "custom-1-2048" \
        --can-ip-forward \
        --tags "nodeport-allow" \
        --image-family "ubuntu-1604-lts" \
        --image-project "ubuntu-os-cloud" \
        --boot-disk-size "200" \
        --boot-disk-type "pd-standard" 

gcloud compute instances create worker \
        --machine-type "custom-1-2048" \
        --can-ip-forward \
        --tags "nodeport-allow" \
        --image-family "ubuntu-1604-lts" \
        --image-project "ubuntu-os-cloud" \
        --boot-disk-size "200" \
        --boot-disk-type "pd-standard" 


gcloud compute instances create "windows" \
  --machine-type "custom-2-4096" \
  --can-ip-forward \
  --image "windows-server-2016-dc-v20180313" \
  --image-project "windows-cloud" \
  --boot-disk-size "200" \
  --boot-disk-type "pd-standard"
