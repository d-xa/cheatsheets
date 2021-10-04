# Github Cheatsheets

## 1. Create a Github Repo from CMD line

0. cd into PROJECTPATH=path/to/project
```
cd $PROJECTPATH
```

1. initialize git on local machine
```
git init -b main
```
2. create remote repository on github with PROJECTNAME=projectname
```
gh repo create $PROJECTNAME
```
> possible arguments see manual: https://cli.github.com/manual/gh_repo_create


4. Pull changes from the new repository that you created
```
git pull --set-upstream origin main
``` 
5. Stage, commit, and push all of the files in your project.
``` 
git add . && git commit -m "initial commit" && git push
```