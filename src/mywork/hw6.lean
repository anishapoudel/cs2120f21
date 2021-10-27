import data.set

/-
Exercise: Prove that for any set, L, L ∩ L = L.

1) Since all the elements in set L are a subset of itself,
the intersection of set L with itself is L since every
element of L is in itself. 
-/


/-
Exercise: Give a formal statement and proof, then an 
English language proof, that the union operator on 
sets is commutative.


2) When using the union operator, the order of the set doesn't
change the outcome making it communitive. 
-/


example: 𝑥	∈		(𝑆∪𝑇)		



/-
Exercise: Prove that ⊆ is reflexive and transitive.
Give a formal statement, a formal proof, and an English
language (informal) proof of this fact.

3) If x ⊆ y (x is a subset of y), then every element of 
x is related to y, thus making it reflexive. Additionally,
if x is a subset of y, and y=z then x=z, making the ⊆ transitive.
-/


/-
Exercise: Prove that ∪ and ∩ are associative.
Give a formal statement, a formal proof, and an 
English language (informal) proof of this fact.

4) The or (∪) operator is associative since it does not matter 
the order of the two sets in the expression because the outcome 
will be all the elements in both the set. This outcome doesn't 
change depending on the order of the sets in the expression. The 
and (∩) operator is also associative since it does not matter 
the order of the two sets in the expression because the outcome 
will be a new set with the elements that are in both the sets.

-/


/-
Assignment: read (at least skim) the Sections 1 and 2 of 
the Wikipedia page on set identities: 
https://en.wikipedia.org/wiki/List_of_set_identities_and_relations 
There, , among *many* other facts, you will find definitions 
of left and right distributivity. To complete the remainder
of this assignment, you need to understand what it means for 
one operator to be left- (or right-) distributive over another. 
-/


/-
Exercise: Formally state and prove both formally and 
informally that ∩ is left-distributive over ∩.
-/


/-
Exercise: Formally state and prove both formally 
and informally that ∪ is left-distributive over ∩.
-/


