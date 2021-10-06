/-
Prove the following simple logical conjectures.
Give a formal and an English proof of each one.
Your English language proofs should be complete
in the sense that they identify all the axioms
and/or theorems that you use.
-/

example : true := 
true.intro

/- apply true introduction rule 
-/ 

example : false := _ 
   -- trick question? why? Yes, this is a trick question because we cant have a proof of false

example : ∀ (P : Prop), P ∨ P ↔ P := 
begin
   assume p, --Assume proposition p exists
   apply iff.intro, --apply the iff rule introduction rule
   assume r, --Assume p or p is true
   apply or.elim r, -- apply the or elimination rule-/
   assume e, --assume p is true 
   exact e, --assume p is equalled to p
   assume q, -- assume p implies p
   exact q, -- assume p is equalled to p
   assume t, --assume p is p
   apply or.intro_left, --assume p or p is true if p is true
   exact t, -- p is true
end
/-Assume proposition p exists. apply the iff rule introduction rule. Assume p or p is true. apply the or elimination rule.
assume p is true. assume p is equalled to p. assume p is p. p is true

-/
example : ∀ (P : Prop), P ∧ P ↔ P := 
begin
   assume p, --assume propositon p exists 
   apply iff.intro, --apply the iff rule introduction rule
   assume pp, -- assume p and p is true
   apply and.elim_left pp, --Assume p is true is p and p is true
   assume h, 
   apply and.intro,
   exact h, --assume p is equalled to p
   exact h,
end
/- assume propositon p exists. apply the iff rule introduction rule. assume p and p is true. Assume p is true is p and p is true.
Assume p is true is p and p is true. assume p is equalled to p
-/

example : ∀ (P Q : Prop), P ∨ Q ↔ Q ∨ P := 
begin
   assume P Q, --Assume the propositions P and Q exists
   apply iff.intro, --Apply the iff rule introduction rule
   assume h, 
   apply or.elim h, -- apply the or elimination rule-/
   assume t, 
   apply or.intro_right,
   exact t, --Assume Q or P is true is Q is true
   apply or.intro_left, --Assume that if Q or P is true then P or Q is true
   assume u,
   apply or.elim u,  -- apply the or elimination rule-/
   assume q,
   apply or.intro_right, -- apply the or introduction rule-/
   exact q,
   assume p,
   apply or.intro_left, -- apply the or introduction rule-/
   exact p,
end
/-Assume the propositions P and Q exists. Apply the iff rule introduction rule. apply the or elimination rule. 
Assume Q or P is true is Q is true. Assume that if Q or P is true then P or Q is true. apply the or elimination rule
apply the or introduction rule. 

-/

example : ∀ (P Q : Prop), P ∧ Q ↔ Q ∧ P := 
begin
   assume Q, -- Assume Propositoin Q and P exists
   assume P,
   apply iff.intro, --apply the iff rule introduction rule
   assume t, --Assume P or Q
   apply and.intro,  -- apply the and introduction rule
   apply and.elim t, -- apply the and eliminatin  rule
   assume i,
   assume j,
   exact j,
   apply and.elim t, -- apply the and elimination rule-/
   assume y,
   assume p,
   exact y,
   assume y,
   apply and.elim y, -- apply the and elimination rule-/
   assume o,
   assume j,
   apply and.intro,  -- apply the and introduction rule-/
   exact j,
   exact o,
end
/-Assume Propositoin Q and P exists. apply the iff rule introduction rule.Assume P or Q. apply the and introduction rule -/

example : ∀ (P Q R : Prop), P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) := 
begin
   assume P,
   assume Q,
   assume T,
   apply iff.intro, --apply the iff rule introduction rule
   assume T,
   apply and.elim T,  -- apply the and elimination rule-/
   assume i,
   assume r,
   apply and.elim T, -- apply the and elimination rule-/
   assume o,
   assume u,


end
/-Asumme propstion P, Q , ans T exists. apply the iff rule introduction rule. P and Q or T is true.
apply the and elimination rule. If Q or T true ans P is true, then the stament is true. -/

example : ∀ (P Q R : Prop), P ∨ (Q ∧ R) ↔ (P ∨ Q) ∧ (P ∨ R) := 
begin
   assume P,
   assume Q,
   assume R,
   apply iff.intro, /- apply the iff rule introduction rule-/
   assume t,
   apply and.intro,  /- apply the and introduction rule-/
   apply or.elim t,
   assume p,
   apply or.intro_left, -- apply the or introduction rule-/
   exact p,
   assume i,
   apply and.elim i, -- apply the and elimination rule-/
   assume j,
   assume r,
   apply or.intro_right, -- apply the or introduction rule-/
   exact j,
   apply or.elim t, -- apply the or elimination rule-/
   assume u,
   apply or.intro_left, -- apply the or introduction rule-/
   exact u,
   assume h,
   apply or.intro_right, -- apply the or introduction rule-/
   apply and.elim_right h, -- apply the and elimination rule-/
   assume h,
   apply and.elim h, -- apply the or elimination rule-/
   assume a,
   assume g,
   cases a,
   apply or.intro_left,
   exact a,
   cases g,
   apply or.intro_left,
   exact g,
   apply or.intro_right,
   apply and.intro,
   exact a,  /-Apply a the goal. -/
   exact g, 


end
/-Asumme propstion P, Q , ans T exists. apply the iff rule introduction rule. P and Q or T is true.
apply the and elimination rule. If Q or T true ans P is true, then the stament is true. -/

example : ∀ (P Q : Prop), P ∧ (P ∨ Q) ↔ P := 
begin
   assume T,
   assume O,
   apply iff.intro, --apply the iff rule introduction rule
   apply and.elim_left,
   assume t,
   apply and.intro,
   exact t,
   apply or.intro_left,
   exact t,
end
/-Assume propostion T and O exist. apply the iff rule introduction rule. Apply the and elimination rule. Assume T is true. 
Apply the and introdcution rule. T is equal to T. Apply the or introduction rule. 
-/
example : ∀ (P Q : Prop), P ∨ (P ∧ Q) ↔ P := 
begin
   assume P,
   assume Q,
   apply iff.intro, --apply the iff rule introduction rule
   assume p,
   apply or.elim p,
   assume i,
   exact i,
   assume o,
   apply and.elim o,
   assume pp,
   assume q,
   exact pp,
   assume k,
   apply or.intro_left,
   exact k,

end

example : ∀ (P : Prop), P ∨ true ↔ true := 
begin
   assume P,
   apply iff.intro, --apply the iff rule introduction rule
   assume ptru,
   apply or.elim ptru,
   assume p,
   exact true.intro,   
   assume tru,
   exact tru,
   assume pv,
   apply or.intro_right,
   exact true.intro,   
end
/-Assume the propostion P exists. Apply the iff rule introcdition rule. 
-/

example : ∀ (P : Prop), P ∨ false ↔ P := 
begin
   assume P,
   apply iff.intro, --apply the iff rule introduction rule
   assume p,
   apply or.elim p,
   assume i,
   exact i,
   assume f,
   apply or.elim p,
   assume p,
   exact p,
   apply or.elim p,
   assume p,
   assume f,
   exact p,
   cases f,
   assume n,
   apply or.intro_left,
   exact n,

end

example : ∀ (P : Prop), P ∧ true ↔ P := 
begin
   assume P,
   apply iff.intro, --apply the iff rule introduction rule
   assume p,
   apply and.elim p, 
   assume i,
   assume true,
   exact i,
   assume p,
   apply and.intro,
   exact p,
   exact true.intro,   
end
/-Assume proposition P exists. Apply the iff rule introduction rule. -/

example : ∀ (P : Prop), P ∧ false ↔ false := 
begin
   assume P, -- Assume  proposition p exists
   apply iff.intro, --apply the iff rule introduction rule
   assume t,
   apply and.elim t,
   assume p,
   assume f, 
   exact f,
   assume t,
   cases t,    -- There are no cases where there is a proof of false (controdiction)

end
/- Assume the propsition P exists. apply the iff rule introduction rule. Assume P and false is true. Apply the and
elimination rule. Theres are no cases where there is a proof of false. 
-/

