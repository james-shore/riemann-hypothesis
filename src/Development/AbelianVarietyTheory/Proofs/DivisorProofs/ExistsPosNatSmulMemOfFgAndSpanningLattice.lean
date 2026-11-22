import Mathlib
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.Signature
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenExists
open NumberField ReciprocityTheory.ChartRestriction.G.FD

namespace GlobalTheory

theorem exists_pos_nat_smul_mem_of_fg_of_span_eq_top :
    ∀ {E : Type} [Field E] [NumberField E] {r : ℕ} (Λ Λ' : Submodule (𝓞 E) (Fin r → E)),
      Λ'.FG → Submodule.span E (Λ : Set (Fin r → E)) = ⊤ →
        ∃ n : ℕ, 0 < n ∧ ∀ v ∈ Λ', (n : E) • v ∈ Λ := by
  first
  | exact @_root_.GlobalTheory.DenominatorExistence.main
  | (intros; exact _root_.GlobalTheory.DenominatorExistence.main ..)

end GlobalTheory
