# LinuxScript

Тут пока мало, поэтому приложу скрипты из цикла упражнения с курса "TrueAdmin" от Центра Финансовых Технологий.

В папке [CFT](/CFT/) задания и скрипты для их выполнения.
Упражение 1 - в конфиге nginx.conf убрать лишние спецсимволы.
Решение: 
```
#grep -v '^$\|^\s*\#' nginx.conf > exercise1.txt
```

Упражнение 2 - 
Решение: (note: incorrect regex)
```
// sed '/\/\/*/G' copy.cpp > exercise2.txt
```
Упражнение 3 - 
Решение: (note: /sum+=$/sum+=$5/; 'BEGIN {tot=0;}' not needed, new variable initialized by 0)
```
find / -name "*asd*" 2>/dev/null | ls -l | awk '{sum+=$} END {print sum}'
ls -l  | find / -name "*asd*" 2>/dev/null
```

