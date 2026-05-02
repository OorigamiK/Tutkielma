import Mathlib

open BigOperators
open MeasureTheory
open Finset
open Filter Asymptotics

def main : IO Unit :=
  IO.println "Lean project with mathlib4 is working!"

structure RvPlus where
  f : ℝ → ℝ
  pos : ∀ x > 0, f x > 0
  strictInc : ∀ x y, x>0 → y>0 → x > y → f x > f y
  measurable : Measurable f

def sum_f (f:ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ i ∈ (Finset.range (n+1)), f (i+1)

def is_n (f : ℕ → ℝ) (x : ℝ) (n : ℕ ) : Prop :=
  sum_f f n ≤ x ∧ x < sum_f f (n+1)

def unique_n (f:ℕ →ℝ) (x:ℝ) : Prop :=
  ∃! n, is_n f x n

lemma exists_n (f : ℕ → ℝ) (x : ℝ) (hx : x>0) :
  ∃ n : ℕ, is_n f x n :=
by
  sorry

lemma exists_unique_n (x:ℝ) (hx : x>0) :
  ∃! n : ℕ, is_n f x n :=
by
  sorry



lemma RvSumAsymp
  (f : ℝ → ℝ)
  (hf : RvPlus f)
  (n : ℝ → ℝ )
  :
  x ~[atTop] n*f(n) / (α+1)
