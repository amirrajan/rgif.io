rm *~*
aws s3 sync . s3://rgif.io --delete
