import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure HeightBoundsPackage where
  heightFunction : Type u
  boundednessCondition : Prop
  northcottProperty : Prop
  uniformBounds : Prop

structure HeightBoundsEvidence (P : HeightBoundsPackage) where
  boundednessConditionClosed : P.boundednessCondition
  northcottPropertyClosed : P.northcottProperty
  uniformBoundsClosed : P.uniformBounds

def HeightBoundsClosed (P : HeightBoundsPackage) : Prop :=
  P.boundednessCondition ∧ P.northcottProperty ∧ P.uniformBounds

theorem height_bounds_closed_from_evidence (P : HeightBoundsPackage)
    (E : HeightBoundsEvidence P) : HeightBoundsClosed P := by
  exact And.intro E.boundednessConditionClosed
    (And.intro E.northcottPropertyClosed E.uniformBoundsClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse