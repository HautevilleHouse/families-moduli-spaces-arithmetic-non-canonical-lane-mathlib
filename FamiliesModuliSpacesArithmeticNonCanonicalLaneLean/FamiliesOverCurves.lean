import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure FamiliesOverCurvesPackage where
  baseCurve : Type u
  familyType : Type v
  genericFiber : Type w
  smoothness : Prop
  properness : Prop
  monodromyAction : Prop

structure FamiliesOverCurvesEvidence (P : FamiliesOverCurvesPackage) where
  smoothnessClosed : P.smoothness
  propernessClosed : P.properness
  monodromyActionClosed : P.monodromyAction

def FamiliesOverCurvesClosed (P : FamiliesOverCurvesPackage) : Prop :=
  P.smoothness ∧ P.properness ∧ P.monodromyAction

theorem families_over_curves_closed_from_evidence (P : FamiliesOverCurvesPackage)
    (E : FamiliesOverCurvesEvidence P) : FamiliesOverCurvesClosed P := by
  exact And.intro E.smoothnessClosed
    (And.intro E.propernessClosed E.monodromyActionClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse