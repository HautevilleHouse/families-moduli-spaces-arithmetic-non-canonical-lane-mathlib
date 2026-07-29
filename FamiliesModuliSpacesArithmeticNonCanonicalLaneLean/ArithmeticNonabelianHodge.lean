import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ArithmeticNonabelianHodgePackage where
  curve : Type u
  rank : Nat
  localSystem : Prop
  higgsBundle : Prop
  nonabelianHodgeCorrespondence : Prop
  arithmeticStructure : Prop

structure ArithmeticNonabelianHodgeEvidence (A : ArithmeticNonabelianHodgePackage) where
  localSystemClosed : A.localSystem
  higgsBundleClosed : A.higgsBundle
  nonabelianHodgeCorrespondenceClosed : A.nonabelianHodgeCorrespondence
  arithmeticStructureClosed : A.arithmeticStructure

def ArithmeticNonabelianHodgeClosed (A : ArithmeticNonabelianHodgePackage) : Prop :=
  A.localSystem ∧ A.higgsBundle ∧ A.nonabelianHodgeCorrespondence ∧ A.arithmeticStructure

theorem arithmetic_nonabelian_hodge_closed_from_evidence (A : ArithmeticNonabelianHodgePackage)
    (E : ArithmeticNonabelianHodgeEvidence A) : ArithmeticNonabelianHodgeClosed A := by
  exact And.intro E.localSystemClosed
    (And.intro E.higgsBundleClosed
      (And.intro E.nonabelianHodgeCorrespondenceClosed E.arithmeticStructureClosed))

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse