SERVICE_ACCOUNT_ADDRESS=$1  
BUCKET_NAME=$2
INSTANCE_NAME=$3
sqldumpfileName=$4
DATABASE_NAME=$5

# Add the service account to the bucket ACL as a writer:
gsutil acl ch -u $SERVICE_ACCOUNT_ADDRESS:W gs://$BUCKET_NAME
# export the database:
gcloud sql export sql $INSTANCE_NAME gs://$BUCKET_NAME/$sqldumpfileName.gz --database=$DATABASE_NAME
