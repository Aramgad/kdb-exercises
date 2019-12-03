/q types
5-3
1 2 3
1 2 3 + 10 20 30
1.0 2.0 3.0
/operators
til 10
count til 10
\ts count til 10000000
\ts count til 100000000

1+2*til 10000000
/boolean operator
1 2 3 = 10 2 30

/date, times yyyy.mm.dd
2018.01.01
2000.01.01=0
1999.12.31=-1

2000.01m=0
1999.12m=-1
2000.02m=2000.02.01
2000.02m=2000.02.05
2000.02.05=35
2000.02m=2000.01.02

/over operator
0 +/ 10 20 30 40 50
0 +/ 10 20 30 40 50
(+/) 10 20 30 40 50
(*/) 1+til 20

/max
4|5
/min
10&2
(|/) 10 30 20 50 40
(&/) 10 30 20 50 40
parse "sums 10 20 30"
(+/) 10 20 30 40 50
(+\) 10 20 30 40 50

Functions:
{x*x}5

f(x):2-x^2
xn-f(xn)/f'(xn)
{[xn]xn+(2-xn*xn)%2*xn}/[1.0]
{[xn]xn+(2-xn*xn)%2*xn}\[1.0]
-2#10 20 30 40 50
10 20, 100 200 300
/Fibonacci:
{x,sum -2#x}/[10;1 1]

{x,sum -2#x}/[10;1 1]


{x,x*x}/[10;1 2]
0
/deltas
deltas 10 20 30 40 50
deltas 110 120 130 140 150
deltas sums 110 120 130 140 150
sums deltas 110 120 130 140 150

a:42
a:98.6

buys:2 1 4 3 5 4
sell:12
2 1 4 3 2 0
(+\) buys
(sums buys) -sell
sums 2 1 4 3 2 0
sums buys

deltas sell & sums buys

/table is not collection of rows
/table is collection of columns
table on columns - columnar operation - vector operations

/trades table
dates:2019.01.01+ 10000000?31
times:10000000?24:00:00.0000
qtys:100*1+10000000?100
qtys:10000000?100

min dates
max dates
n:1000000
dates:2019.10.01+ n?31
times:n?24:00:00.0000
qtys:100*1+n?100
ixs:n?3
syms:`aapl`amzn`googl ixs
pxs:(1+n?0.03)*172.0 1189.0 1073.0 ixs 
t:([]date:dates;time:times;sym:syms;qty:qtys;px:pxs)
t:`date`time xasc t


5#t
select vwap:qty wavg px by sym,bkt:100000000 xbar time from t

select date,time,sym,px from t

\t select date,time,sym,px from t where sym=`aapl

first 10 20 30 40 50

select open:first px, close:last px, lo:min px, hi: max px by date from t where sym=`aapl

4 3 2 1 wavg 10 20 30 40

5 xbar 0 1 2 3 4 5 10 11 21
/0 0 0 0 0 5 10 10 20

/wavg 5 ms
select open:first px, close:last px, lo:min px, hi: max px, wpx: qty wavg px,apx:avg px by bkt:60000 xbar time from t where sym=`aapl

select max px-mins px by date,sym from t
select from t where date=2019.10.20,time >00:05:00
orders:([]date:3#2019.10.20;sym:`amzn`aapl`googl;time:3#00:05:20:000)
aj[`sym`date`time;orders;t]
aj0[`sym`date`time;orders;t]

t:([]time:10:01:01 10:01:03 10:01:04;sym:`msft`ibm`ge;qty:100 200 150)



/maximized profit zen of Q
select max px-mins px from t where sym=`aapl
