# Github Cheatsheets

## 0. Install Github CLI

1. Show the latest version available for gh
```
GH_VERSION=`curl  "https://api.github.com/repos/cli/cli/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/' | cut -c2-` 
echo $GH_VERSION
```

2. Download the latest binary file and extract
```
curl -sSL https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_linux_amd64.tar.gz -o gh_${GH_VERSION}_linux_amd64.tar.gz && tar xvf gh_${GH_VERSION}_linux_amd64.tar.gz
```

3. Copy binary file to /usr/local/bin directory.
```
sudo cp gh_${GH_VERSION}_linux_amd64/bin/gh /usr/local/bin/
```

4. Confirm install, check version
```
gh version
```

## 1. Create a Github Repo from CMD line

0. Specifiy (for example)
``` 
PROJECTNAME=test
USER=d-xa
```

1. login to github
```
gh login auth
```

2. create remote repository on github with PROJECTNAME=projectname
```
gh repo create -y $PROJECTNAME
```
> possible arguments see manual: https://cli.github.com/manual/gh_repo_create


3. create and add README.md and set branch main (local and remote)
```
echo "# $PROJECTNAME" >> README.md
git add README.md
git commit -m "initial commit"
git branch -M main
git push --set-upstream origin main
```
