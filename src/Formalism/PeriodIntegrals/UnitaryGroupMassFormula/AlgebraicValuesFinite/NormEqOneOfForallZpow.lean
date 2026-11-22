import Mathlib
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.EqOneOfForallZpow

noncomputable section

namespace PI.AlgValsFin.W

theorem eq_one_of_forall_zpow {z : ℂ} (h : ∀ k : ℤ, ‖z ^ k - 1‖ < 1) : z = 1 := by
  first | exact UpperTheory.Reformulated.B.Qk23.eq_one_of_forall_zpow .. | (apply UpperTheory.Reformulated.B.Qk23.eq_one_of_forall_zpow <;> assumption) | exact @UpperTheory.Reformulated.B.Qk23.eq_one_of_forall_zpow z h | exact @UpperTheory.Reformulated.B.Qk23.eq_one_of_forall_zpow z

end PI.AlgValsFin.W
