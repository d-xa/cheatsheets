# Conda Cheatsheet

## basics
List conda environments
```
conda env list
```

Install a package in conda
```
conda install PACKAGENAME
```

## environments

Save current environment to a file
```
conda env export > env_file.yml
```

Load environment from a file
```
cona env create -f env_file.yml
```

