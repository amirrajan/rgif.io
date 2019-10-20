rm *~*
aws s3 sync . s3://rgif.io --delete
aws s3api put-bucket-website --bucket rgif.io --website-configuration file://website.json
