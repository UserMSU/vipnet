# vipnet
Выключение VipNet HW1000, HW50 и др. через shell script

0. Установить на машину expect, tcl-expect через apt или из репозитория (dpkg -i)
1. Перекинуть все скрипты в удобную для работы директорию, задать права скриптам для выполнения.
(Например, sudo chmod 764 1vipnet 2vipnet start.sh ip_vipnet)
2. Изменить в start.sh переменные: LOG - логин пользователя на VIPNET Координаторе, VIP - IP-адрес VIPNET Координатора, PASS - Пароль пользователя.
