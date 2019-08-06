# PS-Exfil
Simple data exfiltration using Powershell and HTTP POST request

# Usage
Git clone this repository in the folder of your choice. Then, open both .ps1 file and update the IP and port in each file with the IP of your machine. You can also use the port that you want. 
Now, run a light HTTP server (for example `python2 -m SimpleHTTPServer [port]`) in the same directory.
Open the nc-server.sh script, update the values as you like, and run it.
Update the file list directly, or just the folder.


Copy the content of Inject.ps1 and execute it on the remote target.
After each file is sent, the client will sleep for 5 seconds and the server will ask you whether or not to continue.
Every file will be stored as file_[integer]
