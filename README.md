# gcp-sql-script

There are 5 common variables needed to execute both the scripts :

SERVICE_ACCOUNT_ADDRESS=$1  
BUCKET_NAME=$2
INSTANCE_NAME=$3
sqldumpfileName=$4
DATABASE_NAME=$5

1. The SERVICE_ACCOUNT_ADDRESS is the service account of the sql instance

# Command to execute for import.sh looks like :

bash import.sh p748482066883-jjyszs@gcp-sa-cloud-sql.iam.gserviceaccount.com hu-test1 test1 sqldumpfile guestbook

# Command to execute for export.sh looks like :

bash export.sh p748482066883-jjyszs@gcp-sa-cloud-sql.iam.gserviceaccount.com hu-test1 test1 sqldumpfile guestbook
