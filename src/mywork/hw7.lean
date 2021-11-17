import data.set

namespace relation

-- PRELIMINARY SETUP

/-
Preliminary set up. For the rest of this file,
we specify an arbitrary binary relation, r, on
an arbitrary type, β, as a two-place predicate, 
with infix notation x ≺ y for (r x y). One can
pronounce these expressions in English as "x is
related to y".
-/
variables {α β : Type}  (r : β → β → Prop)
local infix `≺` : 50 := r  


/-
The default Lean libraries are missing definitions
for the assympetric property of relations and for
the notion of a powerset. We define these terms for
use in the rest of this file.
-/
def asymmetric := ∀ ⦃x y⦄, x ≺ y → ¬ y ≺ x
def powerset (s : set β) := { s' | s' ⊆ s}


-- PROBLEMS

/- 
#1: Give both a formal and an English-language proof. Then
answer the question, is the proposition true if you remove
the first condition, that β is inhabited? Briefly explain
your answer (in English).

The powerset is a set of all the subset elements. 

If you remove the first condtion stament, that β is inhabited, 
then the propistion becomes false. This becomes an empty set, 
and this cannot be asymmetric because there are not two elements
in the set, so two elements can not relate to each other. 


-/
example : (∃ (b : β), true) → asymmetric r → ¬reflexive r :=
begin
  unfold asymmetric reflexive,
  assume b,
  assume t,
  cases b,


end



/-
#2. Logic, like programming, is subtle. It's very easy for humans
to miss subtle corner cases. As an example, today I ran across
a problem in a textbook by Paul Traiger, a professor emeritus
of philosophy and cognitive science at Occidental College. He
asks students to prove that if a relation is both transitive and 
reflexive that it cannot be anti-symmetric. See the question at
the very bottom of the page here:
https://sites.oxy.edu/traiger/logic/exercises/chapter13/properties_of_relations_exercise.html

Is the conjecture actually logically valid? If not, what condition 
needs to be added to make it so? Try prove this/his version of the
conjecture, as articulated slightly differently below. If you get
stuck, then you need to figure out an additional condition that needs 
to be added as a premise to make the proposition true. In that case,
add the premise and then show that the updated conjecture is true.



/-
The conjecture is not logically valid. For example, if we wanted to see 
if elements in a set were greater than equal to itself, every item 
would be related to every other item in the set (making it transitive).
All elements would be realted to itself since anything number will be 
greater to or equal to itself. However, two different elements in a set
cannot both be equal to or greater to each other.



-/
example : transitive r → reflexive r → ¬ asymmetric r :=
begin
  unfold ordering, 
end





/-
#3: Prove that the subset relation on the powerset of any
set, s, is antisymmetric. Formally state and prove, and
then give an informal proof of, this proposition.

Subsets of a larger set are only related in one direction making them antisymmetric.



-/
example : ∀ (s : set β) 
            (s1 s2 ∈ powerset s), 
            s1 ⊆ s2 → 
            s2 ⊆ s1 → 
            s1 = s2 :=
begin
  assume i,
  assume j,
  assume q,
  assume r,
  assume w,
  assume c,
  assume x,





end


/-
Given two natural numbers, n and m, we will say that m divides n
if there is a natural number, k, such that n = k*m. Here's a formal
definition of this relation.
-/
def divides (m n : ℕ) := ∃ k, n = k * m


/- 
#4: Formally and informally state and prove each of the following
propositions. Remember that the ring tactic is useful for producing
proofs of simple algebraic equalities involving + and *. You can use
the phrase, "by basic algebra" when translating the use of this tactic
into English. (Or if you wanted to be truly Hobbit-like you could say 
"by the ring axioms!")
-/

-- A: For any n, 1 divides n.


--By basic algebra, any number divided by 1 is equal to itslf. According to the multiplicative idenity
--property, anything divided by 1 is itself.

example : ∀ n, divides 1 n :=
begin
  assume q,
  unfold divides,
  cases q with j pf,
  admit,


end

-- B. For any n, n divides n
-- For all n in a subset, n can be divided by itself making it reflexive
example : ∀ n, divides n n :=
begin
  unfold divides,
  assume q, 
  cases q,
  admit,
  admit,

end

-- #C. prove that divides is reflexive 

-- Every element within a set can be divided by itself, thus making it reflexive
-- n divides b
example : reflexive divides :=


begin
assume i, 
cases i,
admit,
admit,

end 

-- #D. prove that divides is transitive
example : transitive divides :=
begin
  assume t,
  assume i,
  assume r,
  assume k,
  assume w,
  cases w,
  cases k,
  admit,

end 

/- 
E. Is divides symmetric? if yes, give a proof, otherwise 
give a counterexample and a brief explanation to show that 
it's not.
-/

--Divison is not symmetric: 2/1=1 but 1/2=.5 these are NOT symmetric 


/- 
#F. Prove that divides is antisymmetric. 
-/
example : anti_symmetric divides := 
begin  
  unfold anti_symmetric,
  assume q,
  assume w,
  assume k,
  assume y,
  have f  := (eq.refl 0),
  have h  := (w/q),
  have m := (q/w),
  have i:= (q),


  
end


/- #4
Prove the following propositions. Remember that
throughout this file, each definition implicitly
includes β as a type and r as an arbitrary binary 
relation on β. In addition to formal proofs, give
an English language proof of the last of the three
problems.
-/

-- A
--If r isn't related in two different directions (which would make is symetric),
-- then is also cannot be reflexive becuawe it would not be able to relate to itself
example : asymmetric r → irreflexive r :=
begin
  unfold asymmetric irreflexive,
  assume h j o,
  apply h o,
  exact o,
end

-- B
--
example : irreflexive r → transitive r → asymmetric r :=
--If r isn't related in two different directions (which would make is symetric),
-- then is also cannot be reflexive becuawe it would not be able to relate to itself. However, 
-- elements in the set can be relation to other elements in the set in one direction. 

begin
  unfold irreflexive transitive asymmetric,
  assume i e v s o m,
  have f:=(i v),
  have c:= (e o m),
  contradiction,
end

-- C
example : (∃ (b : β), true) →transitive r → ¬ symmetric r → ¬ irreflexive r :=
--Here, elements is set can be related to itself, but not to other elements in both directions.
-- However, elements in the set can be relation to other elements in the set in one direction. 

begin
  unfold transitive  symmetric irreflexive,
  assume i,
  assume o,
  assume d,
  assume p,
  cases i with b s,
  have q:=(p b),


end


end relation
