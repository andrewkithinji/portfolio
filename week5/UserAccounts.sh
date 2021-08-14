#!/bin/bash
awk 'BEGIN {
    FS=":"; #specify field separator
    print"| \033[34mUsername\033[0m             | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34mHome\033[0m                             | \033[34mShell\033[0m                |"; # Table header formatting
    print "______________________________________________________________________________________________________";
}
#Use Regex filter to only records where default shell is "/bin/bash"
$NF=="/bin/bash"{ 
    #Format specified columns output and print
    printf("| \033[33m%-20s\033[0m | \033[35m%-6d\033[0m | \033[35m%-7d\033[0m | \033[35m%-32s\033[0m | \033[35m%-20s\033[0m |\n", $1, $3, $4, $6, $7);
}
END {
    print("______________________________________________________________________________________________________");
}' /etc/passwd #File passed to awk command for parsing