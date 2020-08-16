### Основные требования

-   Sharpe Ration за последние 3 года должен быть >1.

-   Коэффициент корреляции за последние 3 года должен быть <0.9 с
    алгоритмами, имеющими такой жe или больше SR.

-   Каждый пользователь может представить не более 20 алгоритмов. Вы
    выбираете какие именно алгоритмы отправить вплоть до крайнего срока
    подачи алгоритмов.

-   Ваш алгоритм должен использовать только ликвидные акции. Мы отбираем
    500 самых ликвидных акций каждый месяц (сортируя по объему торгов
    volume = sum(close ``$` \cdot `$`` vol)). Смотрите показатель *is\_liquid* в
    разделе данных для более подробной информации.

-   Средний дневной доход должен быть положительным.

-   Крайний срок подачи алгоритма - конец каждого месяца, а именно
    полночь (00:00 UTC) первого дня следующего месяца.