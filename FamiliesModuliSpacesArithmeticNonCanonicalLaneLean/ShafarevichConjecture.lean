import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ShafarevichConjecturePackage where
  baseRing : Type u
  curves : Type v
  boundedFamily : Prop
  finiteness : Prop
  moduliInterpretation : Prop

structure ShafarevichConjectureEvidence (P : ShafarevichConjecturePackage) where
  boundedFamilyClosed : P.boundedFamily
  finitenessClosed : P.finiteness
  moduliInterpretationClosed : P.moduliInterpretation

def ShafarevichConjectureClosed (P : ShafarevichConjecturePackage) : Prop :=
  P.boundedFamily ∧ P.finiteness ∧ P.moduliInterpretation

theorem shafarevich_conjecture_closed_from_evidence (P : ShafarevichConjecturePackage)
    (E : ShafarevichConjectureEvidence P) : ShafarevichConjectureClosed P := by
  exact And.intro E.boundedFamilyClosed
    (And.intro E.finitenessClosed E.moduliInterpretationClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse