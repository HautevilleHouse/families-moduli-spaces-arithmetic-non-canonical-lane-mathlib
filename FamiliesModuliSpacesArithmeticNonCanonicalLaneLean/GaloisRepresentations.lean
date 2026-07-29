import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure GaloisRepresentationsPackage where
  baseField : Type u
  galoisGroup : Type v
  representation : Type w
  continuity : Prop
  ladicCompatibility : Prop
  arithmeticFrobeniusAction : Prop

structure GaloisRepresentationsEvidence (G : GaloisRepresentationsPackage) where
  continuityClosed : G.continuity
  ladicCompatibilityClosed : G.ladicCompatibility
  arithmeticFrobeniusActionClosed : G.arithmeticFrobeniusAction

def GaloisRepresentationsClosed (G : GaloisRepresentationsPackage) : Prop :=
  G.continuity ∧ G.ladicCompatibility ∧ G.arithmeticFrobeniusAction

theorem galois_representations_closed_from_evidence (G : GaloisRepresentationsPackage)
    (E : GaloisRepresentationsEvidence G) : GaloisRepresentationsClosed G := by
  exact And.intro E.continuityClosed
    (And.intro E.ladicCompatibilityClosed E.arithmeticFrobeniusActionClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse