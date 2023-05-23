eval $(maws li general-services)

export CLUSTER_NAME=elastic-management-demo

dkp create cluster aws --cluster-name=$CLUSTER_NAME \
    --additional-tags=owner=$(whoami) \
    --additional-tags=expiration=5d \
    --with-aws-bootstrap-credentials=true \
    --self-managed \
    --registry-mirror-url=https://registry-1.docker.io \
    --registry-mirror-username="dswhitehouse" \
    --registry-mirror-password="r1aj$384Np%t" \
    --region=us-west-2 \
    --timeout=1h \
    --additional-tags=owner=dswhitehouse \
    --additional-tags=expiration=7d


# export KUBECONFIG=$CLUSTER_NAME.conf
# dkp install kommander --installer-config kommander.yaml

