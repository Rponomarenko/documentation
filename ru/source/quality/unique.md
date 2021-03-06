# Уникальность

  Каждый хороший торговый алгоритм - это сигнал, который отражает
несовершенство рынка. Чем больше капитала задействовано в сигнале, тем
меньше маржинальность в процентном выражении. Необходимо минимизировать
пересечение алгоритма с известными и уже существующими сигналами.
Уникальность можно определить как максимальную корреляцию алгоритма с
пулом существующих на платформе алгоритмов: 

```math
r_{XY} = \frac{\text{cov}_{\textbf{X}\textbf{Y}}}{\sigma_{\textbf{X}} \sigma_{\textbf{Y}}} = \frac{\sum (\textbf{X} - \overline{\textbf{X}})(\textbf{Y} - \overline{\textbf{Y}})}{\sqrt{\sum (\textbf{X} - \overline{\textbf{X}})^2(\textbf{Y} - \overline{\textbf{Y}})^2}}
```

где ``$` \textbf{X}, \textbf{Y} `$`` - ежедневные относительные доходы. 
Чем ниже корреляция, тем лучше. Согласно правилам, ваш алгоритм должен иметь
коэффициент корреляции ниже 0.9 за последние 3 года; в противном
случае, вам нужно иметь наибольший Sharpe ratio среди коррелирующих
алгоритмов.