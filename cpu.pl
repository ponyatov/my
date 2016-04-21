% supported CPUs

cpu(amd64,'Intel/AMD 80x86',bits(64)).
cpu(xeon,'Intel Xeon',bits(64)).

consult('cpu/x86.pl').

cpu(cortex,'ARM Cortex-M',bits(32)).
cpu(avr8,'Atmel ATmega AVR',bits(8)).
cpu(i8086,'Intel 8086',bits(16)).

cpu(X) :- cpu(X,_,_).
