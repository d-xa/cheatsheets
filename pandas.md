# Pandas Cheatsheet

```
import pandas as pd
``` 

## Help

> get information and examples for a class or function

```python
help(pd.DataFrame)
help(pd.merge)
```

# Pandas Datastructure
## Series
1-dim labeled array
> create series from list 
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

> Option 1: create dataframe from dict
```python
data_dict = {'Col1': [1,2,3],
             'Col2': ['DE','FR','IT']}
df = pd.DataFrame(data=data_dict) 
``` 

REPL output:
```python
>>> df
   Col1 Col2
0     1   DE
1     2   FR
2     3   IT
```

> Option 2: create dataframe from numpy ndarray
```python
import numpy as np
ndarray = np.array([(1,2,3),
                    (4,5,6),
                    (7,8,9)])
df2 = pd.DataFrame(ndarray, columns = ['a','b','c']) 
``` 

REPL output:
```python
>>> df2
   a  b  c
0  1  2  3
1  4  5  6
2  7  8  9
```

# I/O

## Reading

| File | Command | Description |
| --- | --- | --- |
| csv | `pd.read_csv()` | content |
| excel | `pd.read_excel()` | content |
| parquet | `pd.read_parquet()` | content |
| json | `pd.read_json()` | content |
| xml | `pd.read_xml()` | content |
| pickl | `pd.read_pickle()` | content |
| html table | `pd.read_html()` | content |

> example: read csv
```python
df_csv = pd.read_csv('/path/to/file.csv') 
``` 

## Writing

| File | Command | Description |
| --- | --- | --- |
| csv | `df.to_csv()` | content |
| excel | `df.to_excel()` | content |
| parquet | `df.to_parquet()` | content |
| json | `df.to_json()` | content |
| xml | `df.to_xml()` | content |
| pickl | `df.to_pickle()` | content |
| html table | `df.to_html()` | content |

> example: write csv
```python
df.to_csv('/path/to/df.csv') 
``` 

# Data manipulation functions
pd.melt
pd.pivot
pd.crosstab
pd.cut
pd.qcut
pd.merge
pd.merge

# Datetimelike manipulation functions
pd.to_datetime()
pd.date_range()
pd.bdate_range()

# Attributes of DataFrame and Series objects
## Series attributes

## Dataframe attributes


