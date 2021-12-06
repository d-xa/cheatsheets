# Bash Cheatsheet

## APT
Add sources for future updates (example with vscode):
```
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
```

Get updates
```
sudo apt update
```

Get list of installed apt:
```
apt list --installed
```

Install software
```
sudo apt install $PACKAGENAME
```

Remove software but keep configurations and plugins
```
sudo apt-get remove $PACKAGENAME
```

Completely remove software and dependencies
```
sudo apt-get --purge autoremove $PACKAGENAME
```

Create symlink
```bash
ln -s /path/to/origin /path/to/new
```

## Display settings
Get current setting
``` 
xrandr --current 
```

List active monitors - get names:
```
xrandr --listactivemonitors
```

Revert back to inital display setting
```
xrandr -s 0
```

Scale monitor to 199%
```
xrandr --output $MONITORNAME --scale 1.99x1.99
```  