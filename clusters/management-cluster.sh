eval $(maws li general-services)
export CLUSTER_NAME=elastic-mgt
dkp create cluster aws --cluster-name=$CLUSTER_NAME \
    --additional-tags=owner=$(whoami) \
    --additional-tags=expiration=5d \
    -with-aws-bootstrap-credentials=true \
    --self-managed
    --registry-mirror-url=https://registry-1.docker.io \
    --registry-mirror-username="dswhitehouse" \
    --registry-mirror-password="r1aj$384Np%t" \
    --region=useast1

dkp install kommander --installer-config kommander.yaml

