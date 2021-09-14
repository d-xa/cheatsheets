# ThinkBayes Cheatsheet

**Theorem 1** Compute conditional probability using a conjunction:
$$
P(A|B) = \frac{P(A\ \mathrm{and}\ B)}{P(B)}
$$
```{math}
:label: theorem1
w_{t+1} = (1 + r_{t+1}) s(w_t) + y_{t+1}
```

**Theorem 2** Compute a conjunction using conditional probability:
$$
P(A\ \mathrm{and}\ B) = P(B)\ P(A|B)
$$
```{math}
:label: theorem2
w_{t+1} = (1 + r_{t+1}) s(w_t) + y_{t+1}
```

**Theorem 3** Bayes Theorem - to get `P(B|A)$ from $P(A|B)`:
$$
P(B|A) = \frac{P(A)\ P(B|A)}{P(B)}
$$


```{math}
:label: theorem3
w_{t+1} = (1 + r_{t+1}) s(w_t) + y_{t+1}
```