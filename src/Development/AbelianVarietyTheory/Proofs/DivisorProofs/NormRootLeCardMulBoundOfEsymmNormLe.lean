import Mathlib
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormUnitLeOfEsymm

namespace GlobalTheory

open Polynomial in

theorem cauchy_roots_bound : ∀ (n : ℕ) (B : Multiset ℂˣ) (M : ℝ), B.card = n → 1 ≤ M →
    (∀ j, 1 ≤ j → j ≤ n → ‖(B.map fun b : ℂˣ => (b : ℂ)).esymm j‖ ≤ M) →
    ∀ b ∈ B, ‖(b : ℂ)‖ ≤ n * M := by
  first
  | exact @_root_.GlobalTheory.ElementarySymmetricNormBound.norm_unit_le_of_esymm
  | (intros; exact _root_.GlobalTheory.ElementarySymmetricNormBound.norm_unit_le_of_esymm ..)

end GlobalTheory
