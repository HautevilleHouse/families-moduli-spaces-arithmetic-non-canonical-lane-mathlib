import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ArithmeticNonClassPackage where
  avariceHistory : Prop
  arithmeticReduction : Prop
  tameHasHab : Prop
  rigidification : Prop

structure ArithmeticNonClassEvidence (A : ArithmeticNonClassPackage) where
  avariceHistoryClosed : A.avariceHistory
  arithmeticReductionClosed : A.arithmeticReduction
  tameHasHabClosed : A.tameHasHab
  rigidificationClosed : A.rigidification

def ArithmeticNonClassClosed (A : ArithmeticNonClassPackage) : Prop :=
  A.avariceHistory ∧ A.arithmeticReduction ∧ A.tameHasHab ∧ A.rigidification

theorem arithmetic_non_class_closed_from_evidence
    (A : ArithmeticNonClassPackage) (E : ArithmeticNonClassEvidence A) :
    ArithmeticNonClassClosed A := by
  exact And.intro E.avariceHistoryClosed
    (And.intro E.arithmeticReductionClosed
      (And.intro E.tameHasHabClosed E.rigidificationClosed))

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse