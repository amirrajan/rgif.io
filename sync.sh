rm *~*
aws s3 sync . s3://rgif.io --delete
aws cloudfront create-invalidation --distribution-id $(cat .distribution_id) --paths /index.html
