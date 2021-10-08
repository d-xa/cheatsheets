#!/usr/bin/env bash

# to list md content
list_md () {
	for i in $(ls book/content/markdown/); 
        do echo "- [$(awk 'NR==1'  book/content/markdown/$i)](book/content/markdown/$i)" | sed 's/# //g'; 
    done
    return 0
}

list_md