# ThinkBayes Cheatsheet

**Theorem 1** Compute conditional probability using a conjunction:
```{math}
:label: theorem1
w_{t+1} = (1 + r_{t+1}) s(w_t) + y_{t+1}
```

**Theorem 2** Compute a conjunction using conditional probability:
```{math}
:label: theorem2
w_{t+1} = (1 + r_{t+1}) s(w_t) + y_{t+1}
```

**Theorem 3** Bayes Theorem - to get `P(B|A)` from $P(A|B)$:

```{math}
:label: theorem3
P(A|B) = \frac{ P(A)\ P(B|A)}{P(B)}
```

$$
P(A|B) = \frac{ P(A)\ P(B|A)}{P(B)}
$$ 

**Theorem 4** Bayes Theorem - to get `P(B|A)` from $P(A|B)$:

```{math}
:label: theorem4
P(C) = \frac{ P(A)\ P(B|A)}{P(B)}
```