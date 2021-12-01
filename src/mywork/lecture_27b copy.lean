import algebra.algebra.basic tactic.ring

namespace hidden


inductive nat : Type 
| zero : ℕ 
| succ : (n' : nat) : nat

def z:= nat.zero
#check z
#reduce z

def o:= nat.succ z
def t:= nat.succ o 

def f: nat:= 
begin
  exact nat.succ(nat.succ t)
end

#check t
#reduce t


def inc' : nat → nat:=
begin
  assume i,
  exact i,
end


def inc : nat → nat
| n:= nat.succ n

#reduce inc f

def dec: nat → nat
| nat.zero:= nat.add_zero
|(nat.succ n'):= n' 


def add nat→nat→nat
| (nat.zero) (m):= m
| (nat.succ n') (m) := 
/- answer for n'-/
nat.succ (add n' m)

#reduce add f t

end hidden


def exponation 

2^3

2* 2^2
2 * 2 *2^1
2* 2* *2*2^0



def sum_to : nat→nat
|(nat.zero):= nat.zero
|(nat.succ n'):= add (sum_to n') (inc n')

#reduce sum_to f 


ther