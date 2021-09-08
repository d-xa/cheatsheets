# Pandas Cheatsheet

```
import pandas as pd
``` 
## Series
1-dim labeled array

```python
list1=[3,-5,7,4]
list2=['a','b','c','d']
series=pd.Series(list1,index=list2)
``` 
REPL output:
```python
>>> series
a    3
b   -5
c    7
d    4
dtype: int64 
``` 

## DataFrame
2-dim labeled datastructure with columns of potentially different types

```python
data_dict = {'Col1': [1,2,3],
             'Col2': ['DE','FR','IT']}
df = pd.DataFrame(data_dict, columns = data_dict.keys()) 
``` 

REPL output:
```python
>>> df
   Col1 Col2
0     1   DE
1     2   FR
2     3   IT
```