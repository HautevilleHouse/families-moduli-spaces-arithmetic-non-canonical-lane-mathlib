import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure NoncollapsingPackage (A : ArithmeticNonAdmittedObject) where
  volumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence (A : ArithmeticNonAdmittedObject) (N : NoncollapsingPackage A) where
  volumeBoundClosed : N.volumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed (A : ArithmeticNonAdmittedObject) (N : NoncollapsingPackage A) : Prop :=
  N.volumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence (A : ArithmeticNonAdmittedObject) (N : NoncollapsingPackage A) (E : NoncollapsingEvidence A N) : NoncollapsingClosed A N := by
  exact And.intro E.volumeBoundClosed (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse