# vipnet
Выключение VipNet Координаторов HW1000, HW50 и др. через shell script
ЗАЧЕМ???
ИНФОТЕКС не рассказал, как нормально вырубать випнеты по сети допустим при его работе от ИБП. Работал с CYBERPOWER: отключается питание, cyberpower ИБП запускает скрипт на линукс машине, который КОРРЕКТНО выключает координаторы.

0. Установить на машину expect, tcl-expect через apt или из репозитория (dpkg -i)
1. Перекинуть все скрипты в удобную для работы директорию, задать права скриптам для выполнения.
(Например, sudo chmod 764 1vipnet 2vipnet start.sh ip_vipnet)
2. Изменить в start.sh переменные: LOG - логин пользователя на VIPNET Координаторе, VIP - IP-адрес VIPNET Координатора, PASS - Пароль пользователя.
3. Если 2 VIPNET'а в связке, то поменять в start.sh вызов файла на 2vipnet

P.S. Ввиду неодинаковости производительности разных координаторов, стоит попробовать изменить таймауты в sleep(1vipnet, 2vipnet), если скрипт не будет успевать подключаться по ssh.
