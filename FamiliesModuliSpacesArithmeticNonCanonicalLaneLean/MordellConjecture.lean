import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure MordellConjecturePackage where
  curve : Type u
  genusAtLeastTwo : Prop
  rationalPointsFinite : Prop
  proofViaModuli : Prop

structure MordellConjectureEvidence (P : MordellConjecturePackage) where
  genusAtLeastTwoClosed : P.genusAtLeastTwo
  rationalPointsFiniteClosed : P.rationalPointsFinite
  proofViaModuliClosed : P.proofViaModuli

def MordellConjectureClosed (P : MordellConjecturePackage) : Prop :=
  P.genusAtLeastTwo ∧ P.rationalPointsFinite ∧ P.proofViaModuli

theorem mordell_conjecture_closed_from_evidence (P : MordellConjecturePackage)
    (E : MordellConjectureEvidence P) : MordellConjectureClosed P := by
  exact And.intro E.genusAtLeastTwoClosed
    (And.intro E.rationalPointsFiniteClosed E.proofViaModuliClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse