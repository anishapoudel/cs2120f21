/- 
   *******************************
   PART 1 of 2: AXIOMS [50 points]
   *******************************
-/

/-
Explain the inference (introduction and
elimination) rules of predicate logic as
directed below. To give you guidance on
how to answer these questions we include
answers for some questions.
-/


-- -------------------------------------

/- #1: → implies [5 points]

INTRODUCTION

Explain the introduction rule for →. 

[We give you the answer here.]

In English: Given propositions, P and Q, 
a derivation (computation) a proof of Q 
from any proof of P, is a proof of P → Q.

In constructive logic, a derivation is a
given as a function definition. A proof
of P → Q literally is a function, that,
when given any proof of P as an argument
returns a proof of Q. If you define such
a function, you have proved P → Q.

ELIMINATION

Complete the definition of the elimination
rule for →.

(P Q : Prop) (p2q : P → Q) (p : P)
----------------------------------
     Given propositions of P ∧ Q is true or that P ∨ Q is true, 

a derivation of the proof P is true and Q is true can be 
made or that either propostion of P or the proposition of Q is true. 
-/

-- Give a formal proof of the following
example : ∀ (P Q : Prop) (p2q : P → Q) (p : P), Q :=
begin
  assume P,
  assume Q,
  assume h,
  exact h,
end

-- Extra credit [2 points]. Who invented this principle?



-- -------------------------------------


/- #2: true [5 points]

INTRODUCTION

Give the introduction rule for true using
inference rule notation.

[Here's our answer.]

---------- intro
(pf: true)

Give a brief English language explanation of

 true.intro is a proof of true. It's
always defined, and so we can use it at anytime
to prove the propositions, true. That in fact 
is the introduction rule for true: that true 
has a proof (and is thus invariably logically true). 
In the end, a proof of true is worthless because
it carries no information at all.


ELIMINATION

Give an English language description of the
eliimination rule for true.

[Our answer]

A proof of true carries no information so
there's no use for an elimination rule.
-/

-- Give a formal proof of the following:

example : true :=
begin
  exact(true.intro),
end



-- -------------------------------------

/- #3: ∧ - and [10 points]

INTRODUCTION

Using inference rule notation, give the 
introduction rule for ∧.

[Our answer]

(P Q : Prop) (p : P) (q : Q)
---------------------------- intro
        (pq : P ∧ Q)

Given an English language description of
this inference rule. What does it really
say, in plain simple English. 

-- 
AANSWER:
Given p a proposition of type P which is assumed true 
and q a propostion if type Q which is assumed true, we can 
deduce P and Q is true. 

ELIMINATION

Given the elimination rules for ∧ in both
inference rule and English language forms.

Given that P and Q is assumed is true, the propostion P
can be assumed true as well as the proposition Q

-/

/-
Formally state and prove the theorem that, 
for any propositions P and Q,  Q ∧ P → P. 
-/

example : ∀ (P Q: Prop), Q ∧ P → P :=
begin
  assume P,
  assume Q,
  apply and.elim_right,
end


-- -------------------------------------

/- #4: ∀ - for all [10 points]

INTRODUCTION

Explain in English the introduction rule for ∀. If 
T is any type (such as nat) and Q is any proposition 
(often in the form of a predicate on values of the
given type), how do you prove ∀ (t : T), Q? What is
the introduction rule for ∀?

-- 
ANSWER:
It's called exists.intro in Lean. You
apply it to two arguments: a specific value, w,
in place of x, and a proof that that particular
w satisfies the predicate, P, i.e., that there 
is a proof of the proposition, P w. 

ELIMINATION

Here's an inference rule representation of the elim
rule for ∀. First, complete the inference rule by
filling in the bottom half, then Explain in English
what it says.

(T : Type) (Q : Prop), (pf : ∀ (t : T), Q) (t : T)
-------------------------------------------------- elim
                [(t : T) ,(Q)]

-- English language answer here

Given a proof, (pf : ∀ (t : T), Q), and a value, (t : T),
briefly explain in English how you *use* pf to derive a
proof of Q.

-- For all t of type T, Q is assumed to be true. If there is t of type T, 
then Q is true. 
-/

/-
Consider the following assumptions, and then in the
context of these assumptions, given answers to the
challenge problems.
-/

axioms
  (Person : Type)
  (KnowsLogic BetterComputerScientist : Person → Prop)
  (LogicMakesYouBetterAtCS: 




  -- formalizee the following assumptions here
  -- (1) Lynn is a person
  -- (2) Lynn knows logic
  -- add answe
  -- add answer here

/-
Now, formally state and prove the proposition that
Lynn is a better computer scientist

example : ∀ (P Q : Prop) (p2q : P → Q) (p : P), Q :=
-/
example :(Lynn: Person), KnowsLogic Lynn → BetterComputerScientist= 
begin
end



-- -------------------------------------

/- #5: ¬ - not [10 points] 

The ¬ connective in Lean is short for *not*. Give
the short formal definition of ¬ in Lean. Note that
surround the place where you give your answer with
a namespace. This is just to avoid conflicting with
Lean's definition of not.

Logical not.

not P, with notation ¬ P, is the Prop which is true if and only if P is 
false. It is internally represented as P → false, so one way to prove a 
goal ⊢ ¬ P is to use intro h, which gives you a new hypothesis h : P and 
the goal ⊢ false.
-/

namespace hidden
def not (P : Prop) := ¬P -- fill in the placeholder
end hidden

/-
Explain precisely in English the "proof strategy"
of "proof by negation." Explain how one uses this
strategy to prove a proposition, ¬P. 

A proof of P → false you can derive
a proof of ¬P. To prove ¬P you first assume P,
is true, then you show that in this context
you can derive a contradiction. What you
have then shown, of course, is P → false.

So, to prove ¬P, assume P and show that in
this context there is a contradiction. 
-/

/- Given an proposition, ¬P, we can form a new
proposition, usually written as P, which we
pronounce as "P" and which we define in 
such as way as to assert that ¬ P is not true. -/

/-
Explain precisely in English the "proof strategy"
of "proof by contradiction." Explain how one uses
this strategy to prove a proposition, P (notice 
the lack of a ¬ in front of the P). 

Proof by contradiction is just applying the axiom of negation
elimination. You want to prove P, so you assume ¬P, then show that
this leads to a contradiction, proving ¬¬P,
at which point you "go classical" and apply
the theorem/axiom of negation elimination to
conclude P.

Fill in the blanks the following partial answer:

To prove P, assume __-P__ and show that _¬¬P __. From this derivation you 
can conclude ___contradiction______. Then you apply the rule of negation 
____elimination______ to that result to arrive a a proof of P. We have
seen that the inference rule you apply in the 
last step is not constructively valid but that it
is _____independently_____ valid, and that accepting the axiom
of the _____excluded middle_____ suffices to establish negation
__________ (better called double ___NEGATION__ __elimination_______)
as a theorem.
-/



-- -------------------------------------

/- 
#6: ↔ - if and only if, equivalent to [10 points]
-/

/-
ELIMINATION 

As with ∧, ↔ has two elimination rules. You can 
see their statements here.
-/
#check @iff.elim_left
#check @iff.elim_right

/-
Formally state and prove the theorem that 
biimplication, ↔, is *commutative*. Note: 
put parentheses around each ↔ proposition,
as → has higher precedence than ↔. Recall
that iff has both elim_left and elim_right
rules, just like ∧.
-/

example  : ∀ (P Q : Prop), P ∧ Q ↔ Q ∧ P  :=
begin
  assume P,
  assume Q,
  apply iff.intro,
  assume pandq,
  apply and.elim pandq,
  assume p,
  assume q,
  apply and.intro,
  exact q,
  exact p,
  assume qandp,
  apply and.elim qandp,
  assume q,
  assume p,
  apply and.intro,
  exact p,
  exact q,
end

end


/- 
   ************************************************
   PART 2 of 3: PROPOSITIONS AND PROOFS [50 points]
   ************************************************
-/

/- #7 [20 points]

First, give a fluent English rendition of
the following proposition. Note that the
identifier we use, elantp, is short for
"everyone likes a nice, talented person."
Then give a formal proof. Hint: try the
"intros" tactic by itself where you'd
previously have used assume followed by
a list of identifiers. Think about what
each expression means. 
-/

def ELJL : Prop := 
  ∀ (Person : Type) 
    (Nice : Person → Prop)
    (Talented : Person → Prop)
    (Likes : Person → Person → Prop)
    (elantp : ∀ (p : Person), 
      Nice p → Talented p → 
      ∀ (q : Person), Likes q p)
    (JohnLennon : Person)
    (JLNT : Nice JohnLennon ∧ Talented JohnLennon),
    (∀ (p : Person), Likes p JohnLennon) 
    

example : ELJL :=
begin
  assume h,
  assume i,
  assume o,
  assume P,
  assume y,
  assume q,
  assume v,
  assume m,
  admit,

end



/- #8 [10 points]

If every car is either heavy or light, and red or 
blue, and we want a prove by cases that every car 
is rad, then: 

-- how many cases will need to be considered? __8__
-- list the cases (informaly)
    -- heavy and blue, not rad
    --heavy and red,  not rad
    -- light and blue, not rad
    -- light and red, not rad
`   -- heavy and blue, rad
    --heavy and red, rad
    -- light and blue, rad
    -- light and red, rad
-/

/-
  *********
  RELATIONS
  *********
-/


/- #9 [20 points]
Equality can be understood as a binary relation
on objects of a given type. There is a binary 
equality relation on natural numbers, rational 
numbers, on strings, on Booleans, and so forth.

We also saw that from the two axioms (inference
rules) for equality, we could prove that it is
not only reflexive, but also both symmetric and
transitive.

Complete the following definitions to express
the propositions that equality is respectively
symmetric and transitive. (Don't worry about
proving these propositions. We just want you
to write them formally, to show that you what
the terms means.)
-/

def eq_is_symmetric : Prop :=
  ∀ (T : Type) (x y : T), 
    x = y → 
    y = x 

def eq_is_transitive : Prop :=
  ∀ (T : Type) 
    (x y z : T), 
    x = y → 
    y = z → 
    x = z


/-
  ************
  EXTRA CREDIT
  ************
-/

/- 
EXTRA CREDIT: State and prove the proposition
that (double) negation elimination is equivalent
to excluded middle. You get 1 point for writing
the correct proposition, 2 points for proving it
in one direction and five points for proving it
both directions. 
-/

def negelim_equiv_exmid : Prop := 
 ∀ (P : Prop), (P ∨ ¬¬P) 

example : ∀ (P : Prop), (P ∨ ¬¬P) :=
begin
  assume P ,
  apply or.intro_right,
  assume p,
  admit,
end 

/- 
EXTRA CREDIT: Formally express and prove the
proposition that if there is someone everyone
loves, and loves is a symmetric relation, then 
thre is someone who loves everyone. [5 points]
-/

axiom Loves : Person → Person → Prop

example : 
  (∃ (p1 : Person), ∀ (p2 : Person), Loves p2 p1) → 
  (∀ (e : Person), ∃ (s : Person), Loves e s) :=
begin
  assume h,
  cases h with p pf,
  assume e,
  apply exists.intro p,
  exact (pf e),
end