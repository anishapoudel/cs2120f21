-- 1
example : 0 ≠ 1 :=
begin
  -- ¬ (0 = 1)
  -- (0 = 1) → false
  assume h,
  cases h,
end


-- 2
example : 0 ≠ 0 → 2 = 3 :=
begin
  assume h,
  have f  := h (eq.refl 0),
  exact false.elim (f),
end


example : 0 ≠ 0 → 2 = 3 :=
begin
  assume h,
  have f  := (eq.refl 0),
  contradiction,
  end

-- 3
example : ∀ (P : Prop), P → ¬¬P :=
begin
  assume P,
  assume (p : P),
  -- ¬¬P
  -- ¬P → false
  -- (P → false) → false
 assume h,
  have f := h p,
  exact f,
end 

-- We might need classical (vs constructive) reasoning 
#check classical.em
open classical
#check em

/-
axiom em : ∀ (p : Prop), p ∨ ¬p

This is the famous and historically controversial
"law" (now axiom) of the excluded middle. It's is
a key to proving many intuitive theorems in logic
and mathematics. But it also leads to giving up on
having evidence *why* something is either true or
not true, in that you no longer need a proof of 
either P or of ¬P to have a proof of P ∨ ¬P.
-/

-- 4
theorem neg_elim : ∀ (P : Prop), ¬¬P → P :=
begin
  assume P,
  assume h,
  have pornp := classical.em P,
  cases pornp with p pn,
  exact p,
  contradiction,
end

-- 5
theorem demorgan_1 : ∀ (P Q : Prop), ¬ (P ∧ Q) ↔ ¬ P ∨ ¬ Q :=
begin
  assume P Q,
  split,
  --forward
  assume h,
  cases (classical.em P) with p np,
  cases (classical.em Q) with q nq,
  have pq:= and.intro p q,
  contradiction,
  exact or.inr nq,
  exact or.inl np,
  --backward
  admit,
 
end





theorem demorgan_1 : ∀ (P Q : Prop), ¬ (P ∧ Q) ↔ ¬ P ∨ ¬ Q :=
begin
  assume P,
  assume U,
  apply iff.intro,
  assume q,
  cases (em P) with p ,
  cases (em U) with u,
  have pandu: P ∧ U:= and.intro p u,
  contradiction,
  have pornp := classical.em P,
  apply or.elim pornp,
  assume i,
  cases (em P) with p ,
  cases (em U) with u,
  have pandu:= and.intro p u,
    have pornp := classical.em U,


end


-- 6
theorem demorgan_2 : ∀ (P Q : Prop), ¬ (P ∨ Q) → ¬P ∧ ¬Q :=
begin
  assume P Q,
  assume h,
  cases (classical.em P) with p np,
  cases (classical.em Q) with q nq,
  have porq := or.intro_left Q p,
  contradiction,
  have porq:= or.intro_left Q p,
  contradiction,
  cases (classical.em Q) with q nq,
  

end
----porq:= or.inl p,
-- 6
theorem demorgan_3 : ∀ (P Q : Prop), ¬ (P ∨ Q) → ¬P ∧ ¬Q :=
begin
  assume P O i,
  apply and.intro,
  assume u,
end


-- 7
theorem disappearing_opposite : 
  ∀ (P Q : Prop), P ∨ ¬P ∧ Q ↔ P ∨ Q := 
begin
  assume P,
  assume K,
  apply iff.intro,
  assume u,
  apply or.elim u,
  assume p,
  apply or.intro_left,
  exact p,
  assume pk,
  apply and.elim pk,
  assume p,
  assume k,
  apply or.intro_right,
  exact k,
  assume pk,
  apply or.intro_left,
  apply or.elim pk,
  assume p,
  exact p,
  assume k,
  apply or.elim pk,
  assume p,
  exact p,
  assume k,

end


-- 8
theorem distrib_and_or : 
  ∀ (P Q R: Prop), (P ∨ Q) ∧ (P ∨ R) ↔
                    P ∨ (Q ∧ R) :=
begin
  assume P K Q ,
  apply iff.intro,
  assume i,
  apply and.elim i,
  assume pk,
  assume pl,
  



end

-- remember or is right associative
-- you need this to know what the lefts and rights are
-- 9
theorem distrib_and_or_foil : 
  ∀ (P Q R S : Prop),
  (P ∨ Q) ∧ (R ∨ S) ↔
  (P ∧ R) ∨ (P ∧ S) ∨ (Q ∧ R) ∨ (Q ∧ S) :=
begin
  assume Q K J I ,
  apply iff.intro,
  assume sd,
  apply and.elim sd,
  assume i,
  assume j,
end


/- 10
Formally state and prove the proposition that
not every natural number is equal to zero.
-/
lemma not_all_nats_are_zero : exists (n : ℕ ), ¬n =0 :=
begin
  intros, 
  apply exists.intro (0),
  
  




end 

-- 11. equivalence of P→Q and (¬P∨Q)
example : ∀ (P Q : Prop), (P → Q) ↔ (¬P ∨ Q) :=
begin
  assume P ,
  assume Q ,
  apply iff.intro,
  assume p, 
  apply or.intro_right,
  

  
 
end

-- 12
example : ∀ (P Q : Prop), (P → Q) → (¬ Q → ¬ P) :=
begin
  assume U,
  assume I,
  assume O,
  assume i,
  not.intro i,


  


end

-- 13
example : ∀ (P Q : Prop), ( ¬P → ¬Q) → (Q → P) :=
begin
  assume P,
  assume Q,
  assume I,
  assume u,


end


example : ∀ (P Q : Prop) (p2q : P → Q) (p : P), Q :=
begin
  assume h,
  assume P,
  assume pandh,
  exact pandh,
end


