# Elements of statistical learning

## Formula Cheatsheet
| name | formula|
| --- | --- | 
| sample mean | $\overline{x} = \sum_{i=1}^n x_{i} / n$ |
| estimated standard deviation | $\hat{\sigma} = \lbrack \sum_{i=1}^n (x_{i}-\overline{x})^2 / (n-1) \rbrack^{1/2}  $
| standard error | $\hat{se} = \hat{\sigma} / \sqrt{n} = \lbrack \sum_{i=1}^n (x_{i}-\overline{x})^2 / (n(n-1)) \rbrack^{1/2} $  |
| linear regression | $y = \hat{\beta}_{0} + \beta_{1} x$ |

## Chapter 2 - Overview of Supervised Learning

### 2.1 Introduction

Terminologoy:
| term | comment|
| --- | --- | 
| input | set of variables that is measured or preset (ML literature) |
| output | inputs have influence on vales of outputs (ML literature) |
| supervised learning | goal to use inputs to predict outputs |
| predictors or independent variables | synonym for input (statistical literature) |
| features | synonym for inputs (pattern recognition literature)
| dependent variables | synonym for output (statistical literature)


### 2.2 Variable Types and Terminology

- 2 types of outputs: a) quantitative measurement (continious variables), b) qualitative (discrete variables /classes / factors) 
- 2 types of prediction: can be viewed as function approximation
- a) regression: to predict continous variables
- b) classification: to predict discrete variables
- 3 input types: a) quantitative input, b) qualitative / unordered categorical, c) ordered categorical

Terminologoy:
| symbol | comment|
| --- | --- | 
| X | To denote quantitative outputs ... $X_{j}$ and $x_{i}$|
| Y | yyy |
| G | To denote qualitative outputs |
| **X** | N x p matrix with N observations and p features/columns/inputs |


### 2.3 