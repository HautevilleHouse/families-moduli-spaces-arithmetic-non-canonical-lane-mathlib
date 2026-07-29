import HautevilleHouse.FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

def ConstrainedFamiliesModuliSpacesArithmeticNonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_families_moduli_spaces_arithmetic_non_endgame (A : AdmissibleClass) :
    ConstrainedFamiliesModuliSpacesArithmeticNonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse