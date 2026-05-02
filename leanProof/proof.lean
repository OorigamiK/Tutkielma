import Mathlib.MeasureTheory.MeasureSpace

structure RvPlusFunc where
  f : ℝ → ℝ
  pos : ∀ x > 0, f x > 0
  strictInc : ∀ x y, x > 0 → y > 0 → x > y → f x > f y



lemma sumAsymp (α x n : ℝ) (hα : α > -1) (hx : x>0) (hn : n>0) :
  x ~[atTop] n * f n / (α+1) :=
by
  sorry
