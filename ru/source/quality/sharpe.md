# Sharpe Ratio


Чтобы оценить прибыльность алгоритма, мы в первую очередь измеряем
Sharpe Ratio (SR). Это наиболее важный и широко используемый показатель.
Для нашей платформы мы используем годовой SR и предполагаем, что в году
в среднем 252 торговых дня. Годовая формула SR представлена ниже:

```math
\label{SR_final_first}
    \text{SR} = \frac{\sqrt[N]{[\prod\limits_{i=1}^{N} (rr_i + 1)]^{252}} - 1}{\sqrt{\frac{252}{N}\sum\limits_{i=1}^{N} (rr_{i}  - \overline{rr}) }},
```

где ``$` rr_i `$`` - дневная относительная доходность (за i-день),
``$`\overline{rr}`$`` - среднее значение.

Числитель - это среднесуточный доход. В нашем случае размер торгуемого
капитала (book size) - это весь совокупный доход (equity), поэтому
среднесуточный доход считается как геометрическое среднее.

Знаменатель - это стандартное отклонение доходности портфеля.
Знаменатель можно воспринимать как волатильность.

Таким образом, Sharpe ratio - это доход на единицу риска
(волатильность). Чем больше Sharp ratio, тем лучше (Рис.1).
Для успешной отправки алгоритма, показатель SR должен быть больше 1 за
последние 3 года.

![Sharpe low](low_sharpe.png)
![Sharpe high](high_sharpe.png)
Рис 1. Графики акций для разных алгоритмов. Верхний график: ``$` \text{SR} = 1.28 `$``.
Нижний график: ``$` \text{SR} = 7.62 `$``



В 1994 William Sharpe определил Sharpe ratio следующим образом:

```math
\label{SR_1}
    \text{SR} = \frac{E(R_p - R_f)}{\sigma_p},
```
    
где ``$` R_p `$`` - доходность

портфеля, ``$` R_f `$`` - безрисковая ставка, ``$` E(R_p - R_f) `$`` - ожидаемое
значение превышения доходности портфеля над эталонной доходностью,
``$` \sigma_p `$`` - стандарт отклонение избыточной доходности портфеля. Мы
полагаем, что безрисковая ставка равна нулю (альтернативный способ
вычисления SR - установить общую прибыль S&P 500 как безрисковую
ставку). За N торговых дней:
 
```math
 \label{SR_2}
    \text{SR} = \frac{\text{average daily return}}{\text{daily volatility}} = \frac{\sqrt[N]{\prod\limits_{i=1}^{N} (rr_i + 1)} - 1}{\sqrt{\frac{1}{N}\sum\limits_{i=1}^{N} (rr_{i}  - \overline{rr}) }},
```

где ``$` \overline{rr} `$`` - ожидаемое значение относительной доходности. В
нашем случае размер торгуемого капитала (book size) - это весь
совокупный доход (equity), поэтому числитель является геометрическим
средним. Теперь введем SR, масштабированный на произвольный период ``$` T `$``:

```math
\label{SR_final}
    \text{SR} = \frac{\sqrt[N]{[\prod\limits_{i=1}^{N} (rr_i + 1)]^T} - 1}{\sqrt{\frac{T}{N}\sum\limits_{i=1}^{N} (rr_{i}  - \overline{rr}) }}.
```

Для годового Sharpe ratio можно указать ``$` T = 252 `$`` торговых дня в году.
Мы используем годовой Sharpe ratio для оценки алгоритмов на нашей платформе.