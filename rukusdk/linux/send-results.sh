dos2unix output.txt
curl -F 'upload_file=@output.txt' --form 'title=DataReport' http://rukusdk.byteme.io/sdk?key=[secret]
