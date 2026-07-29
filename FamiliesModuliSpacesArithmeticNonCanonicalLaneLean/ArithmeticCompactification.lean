import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.ModuliSpaceStratification

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ArithmeticCompactificationPackage (M : ModuliSpacePackage) where
  toroidalCompactification : Type
  logarithmicGeometry : Type
  canonicalBundleExtension : Prop
  boundaryDivisor : Prop
  minimalModelProgram : Prop

structure CompactificationEvidence {M : ModuliSpacePackage}
    (C : ArithmeticCompactificationPackage M) where
  canonicalBundleExtensionClosed : C.canonicalBundleExtension
  boundaryDivisorClosed : C.boundaryDivisor
  minimalModelProgramClosed : C.minimalModelProgram

def ArithmeticCompactificationClosed {M : ModuliSpacePackage}
    (C : ArithmeticCompactificationPackage M) : Prop :=
  C.canonicalBundleExtension ∧ C.boundaryDivisor ∧ C.minimalModelProgram

theorem arithmetic_compactification_closed_from_evidence
    {M : ModuliSpacePackage} (C : ArithmeticCompactificationPackage M)
    (E : CompactificationEvidence C) : ArithmeticCompactificationClosed C := by
  exact And.intro E.canonicalBundleExtensionClosed
    (And.intro E.boundaryDivisorClosed E.minimalModelProgramClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse
