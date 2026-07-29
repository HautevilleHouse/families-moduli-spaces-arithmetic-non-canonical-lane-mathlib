import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ArithmeticModuliSpacePackage where
  baseScheme : Type u
  moduliFunctor : Type v
  coarseModuliSpace : Type w
  moduliProblemFine : Prop
  coarseSpaceExists : Prop
  familyOverBase : Prop

structure ArithmeticModuliSpaceEvidence (P : ArithmeticModuliSpacePackage) where
  moduliProblemFineClosed : P.moduliProblemFine
  coarseSpaceExistsClosed : P.coarseSpaceExists
  familyOverBaseClosed : P.familyOverBase

def ArithmeticModuliSpaceClosed (P : ArithmeticModuliSpacePackage) : Prop :=
  P.moduliProblemFine ∧ P.coarseSpaceExists ∧ P.familyOverBase

theorem arithmetic_moduli_space_closed_from_evidence (P : ArithmeticModuliSpacePackage)
    (E : ArithmeticModuliSpaceEvidence P) : ArithmeticModuliSpaceClosed P := by
  exact And.intro E.moduliProblemFineClosed
    (And.intro E.coarseSpaceExistsClosed E.familyOverBaseClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse