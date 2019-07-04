```
mbohun@linux-bswl:~/src/test_collect_file_types.git> ls -lahF
total 20K
drwxr-xr-x  4 mbohun users 4.0K Jul  5 00:09 ./
drwxr-xr-x 30 mbohun users 4.0K Jul  4 22:15 ../
drwxr-xr-x  2 mbohun users 4.0K Jul  5 00:10 docs/
drwxr-xr-x  8 mbohun users 4.0K Jul  5 00:00 .git/
-rwxr-xr-x  1 mbohun users 1.6K Jul  4 23:57 make_dirs_with_files.sh*
```
```
mbohun@linux-bswl:~/src/test_collect_file_types.git> ./make_dirs_with_files.sh
```
```
mbohun@linux-bswl:~/src/test_collect_file_types.git> find ./user-* -type f
./user-00/test_file-1562249634.250297053.xml
./user-00/test_file-1562249634.241488466.doc
./user-00/test_file-1562249634.255772005.xml
./user-00/test_file-1562249634.258678495.odt
./user-00/index.html
./user-00/test_file-1562249634.247362766.py
./user-00/test_file-1562249634.244623265.jpg
./user-00/test_file-1562249634.253037951.tar
./user-01/test_file-1562249634.282740639.doc
./user-01/test_file-1562249634.278373430.png
./user-01/test_file-1562249634.269478939.png
./user-01/test_file-1562249634.274013835.jpeg
./user-01/index.html
./user-01/test_file-1562249634.267225459.rtf
./user-01/test_file-1562249634.276037678.md
./user-01/test_file-1562249634.280517470.tar
./user-01/test_file-1562249634.264654484.doc
./user-01/test_file-1562249634.284848361.py
./user-01/test_file-1562249634.271794158.tiff
./user-02/test_file-1562249634.305495365.jpg
./user-02/test_file-1562249634.303873664.gif
./user-02/test_file-1562249634.291509138.py
./user-02/test_file-1562249634.295028410.odt
./user-02/index.html
./user-02/test_file-1562249634.298513251.jpeg
./user-02/test_file-1562249634.296757037.jpg
./user-02/test_file-1562249634.289747686.doc
./user-02/test_file-1562249634.300461457.txt
./user-02/test_file-1562249634.302200281.jpeg
./user-02/test_file-1562249634.293272056.png
./user-03/test_file-1562249634.311417297.pnm
./user-03/index.html
./user-03/test_file-1562249634.313168063.pdf
./user-03/test_file-1562249634.309582372.jpeg
./user-04/test_file-1562249634.318999971.jpeg
./user-04/index.html
./user-04/test_file-1562249634.317304169.xz
./user-05/test_file-1562249634.322968389.jpeg
./user-05/test_file-1562249634.327982741.c
./user-05/index.html
./user-05/test_file-1562249634.324630737.jpg
./user-05/test_file-1562249634.326316202.docx
./user-06/test_file-1562249634.335295969.docx
./user-06/test_file-1562249634.336944419.xz
./user-06/index.html
./user-06/test_file-1562249634.333615463.pnm
./user-06/test_file-1562249634.331945083.svg
./user-06/test_file-1562249634.338618989.rtf
./user-07/index.html
./user-07/test_file-1562249634.342668492.pnm
./user-08/test_file-1562249634.346650180.jpg
./user-08/test_file-1562249634.348291087.rtf
./user-08/index.html
./user-08/test_file-1562249634.349961607.rtf
./user-09/test_file-1562249634.355598100.md
./user-09/test_file-1562249634.357245362.txt
./user-09/test_file-1562249634.353902927.py
./user-09/index.html
./user-09/test_file-1562249634.358927336.svg
./user-10/test_file-1562249634.364535474.xz
./user-10/test_file-1562249634.362870052.xz
./user-10/index.html
```
```
mbohun@linux-bswl:~/src/test_collect_file_types.git> cat ./user-10/index.html
<html>
    <head>
        <title>user-10</title>
    </head>
    <body>
        <h2>attachments</h2>
        <a href="test_file-1562249634.362870052.xz">test_file-1562249634.362870052.xz</a>
        <p></p>
        <a href="test_file-1562249634.364535474.xz">test_file-1562249634.364535474.xz</a>
        <p></p>
    </body>
</html>
```
