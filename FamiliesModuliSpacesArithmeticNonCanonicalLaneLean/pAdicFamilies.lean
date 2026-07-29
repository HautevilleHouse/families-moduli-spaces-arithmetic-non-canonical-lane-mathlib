import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure PAdicFamiliesPackage where
  baseScheme : Type u
  padicIndexSet : Type v
  family : Type w
  variationProperties : Prop
  analyticContinuation : Prop
  growthCondition : Prop

structure PAdicFamiliesEvidence (P : PAdicFamiliesPackage) where
  variationPropertiesClosed : P.variationProperties
  analyticContinuationClosed : P.analyticContinuation
  growthConditionClosed : P.growthCondition

def PAdicFamiliesClosed (P : PAdicFamiliesPackage) : Prop :=
  P.variationProperties ∧ P.analyticContinuation ∧ P.growthCondition

theorem padic_families_closed_from_evidence (P : PAdicFamiliesPackage)
    (E : PAdicFamiliesEvidence P) : PAdicFamiliesClosed P := by
  exact And.intro E.variationPropertiesClosed
    (And.intro E.analyticContinuationClosed E.growthConditionClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse