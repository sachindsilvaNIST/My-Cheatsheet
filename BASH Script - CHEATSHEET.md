### If you want to execute git commands all in one way

- Modify and add the following bash script into your respective .git repostiory (The directory where .git/ folder exists)


Eg : 

```
#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Commit message is required."
    echo "Usage: $0 \"Your commit message\""
    exit 1
fi

git add .
git commit -m "$1"


```
