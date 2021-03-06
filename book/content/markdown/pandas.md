# Pandas Cheatsheet

```
import pandas as pd
``` 
## Reference
https://pandas.pydata.org/docs/reference/index.html

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
data_dict = {'Numbers': [1,2,3],
             'Countries': ['DE','FR','IT'],
             'Color': ['Blue','Red','Green']}
df = pd.DataFrame(data=data_dict) 
``` 

REPL output:
```python
>>> df
   Numbers Countries  Color
0        1        DE   Blue
1        2        FR    Red
2        3        IT  Green
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

## common manipulations
| Target | Command | Description 
| --- | --- | --- |
| adding column (opt.1) | `df['new_col1'] = list` | Adding list to existing DataFrame as a new column at the end | 
| adding column (opt.2) | `df.insert(2, 'new_col2', list) ` | Insert list to existing DataFrame as a new column at specific position |
| filter df | `df.filter()` | Select columns or rows by name, regex |
| filter df by column values (opt.1) | `df.query("Color == 'Blue'")` | Filter based on a query string |
| filter df by column values (opt.2) | `df[list_bool]` | Filter by a given list of Booleans, like list_bool = [True, False, True, ...] |
| drop column (opt.1) | `df.drop(columns=['col1', 'col2'])` | Drop column by giving list of column names |
| drop columns (opt.2) | `df.pop('col_name')` | Drop a column and return the dropped column |
| drop rows | `df.drop(index=[0,2])` | Drop rows based on list of index |
| drop NA | `df.dropna()` | Drop the rows where at least one element is missing |

> pd.append(dict, ignore_index=True)

```python
# append dictionary as new row
list_keys = list(df.columns) # e.g. ['Numbers', 'Countries', 'Color']
list_values = [11, 'UK', 'Yellow']
data_dict = dict(zip(list_keys,list_values), ignore_index=True) 
```
> df.loc[i] = list
```python
# insert new row at specific position 
df.loc[2] = [11, 'ES', 'Purple']

# insert new row at top position 
df.loc[-1] = [-12, 'JP', 'White']

# insert new row at bottom position
bottom_pos = df.shape[0]
df.loc[bottom_pos] = [-4, 'US', 'Brown']
```

https://www.listendata.com/2019/07/how-to-filter-pandas-dataframe.html

## general functions
| Command | Description 
| --- | --- |
| `pd.melt(df,...)` or `df.melt(id_vars,value_vars)` | Unpivot a DataFrame from wide to long format, optionally leaving identifiers set. | 
| `pd.pivot(df,...)` or `df.pivot(index,columns)` | content |
| `pd.crosstab(df,...)` or `df.crosstab()` | content |
| `pd.cut(df,...)` or `df.cut()` | content |
| `pd.merge(df,...)` or `df.merge()` | content |

> pd.melt

REPL output:
```python
>>> df.melt()
    variable  value
0    Numbers      1
1    Numbers      2
2    Numbers      3
3  Countries     DE
4  Countries     FR
5  Countries     IT
6      Color   Blue
7      Color    Red
8      Color  Green

>>> df.melt(['Color'])
   Color   variable value
0   Blue    Numbers     1
1    Red    Numbers     2
2  Green    Numbers     3
3   Blue  Countries    DE
4    Red  Countries    FR
5  Green  Countries    IT

>>> df.melt(['Color'],['Countries'])
   Color   variable value
0   Blue  Countries    DE
1    Red  Countries    FR
2  Green  Countries    IT
``` 

> pd.pivot

REPL output:
```python
>>> df.pivot(index='Countries',columns=['Numbers'])
          Color            
Numbers       1    2      3
Countries                  
DE         Blue  NaN    NaN
FR          NaN  Red    NaN
IT          NaN  NaN  Green
```

## Further manipulations
```python
# sort data
df.sort_values(by='ColumnName')
```

change index / reindex
```python
df.reindex(index=[3,0,1,2])
```

# Datetimelike manipulation functions
pd.to_datetime()
pd.date_range()
pd.bdate_range()


```python
# to convert string into datetime object
pd.to_datetime("01.01.2022", format='%d.%m.%Y'))
# to convert whole column of strings into datetime object
df['date'] = pd.to_datetime( df['stringdate'], format='%d.%m.%Y')
# to extract years of datetime object
df['date'].dt.year
``` 


# Attributes of DataFrame and Series objects
## Series attributes

## Dataframe attributes


# TODO
- multiindex dataframe