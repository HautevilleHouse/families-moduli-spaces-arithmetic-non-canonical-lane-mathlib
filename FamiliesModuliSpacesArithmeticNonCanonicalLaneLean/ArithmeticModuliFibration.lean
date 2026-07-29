import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.RiemannianCurvature
import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.ShimuraVarieties

/-!
# Arithmetic Moduli Fibration Package
-/

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ArithmeticModuliFibrationPackage {G : RiemannianCurvaturePackage}
    {S : ShimuraVarietiesPackage G} where
  fibrationBase : Type u
  fiberFamily : fibrationBase → Type v
  arithmeticStructure : Prop
  periodMapping : Prop
  galoisRepresentation : Prop
  algebraicityConstraint : Prop

structure ArithmeticModuliFibrationEvidence {G : RiemannianCurvaturePackage}
    {S : ShimuraVarietiesPackage G}
    (A : ArithmeticModuliFibrationPackage S) where
  arithmeticStructureClosed : A.arithmeticStructure
  periodMappingClosed : A.periodMapping
  galoisRepresentationClosed : A.galoisRepresentation
  algebraicityConstraintClosed : A.algebraicityConstraint

def ArithmeticModuliFibrationClosed {G : RiemannianCurvaturePackage}
    {S : ShimuraVarietiesPackage G}
    (A : ArithmeticModuliFibrationPackage S) : Prop :=
  A.arithmeticStructure ∧ A.periodMapping ∧ A.galoisRepresentation ∧ A.algebraicityConstraint

theorem arithmetic_moduli_fibration_closed_from_evidence
    {G : RiemannianCurvaturePackage} {S : ShimuraVarietiesPackage G}
    (A : ArithmeticModuliFibrationPackage S)
    (E : ArithmeticModuliFibrationEvidence A) : ArithmeticModuliFibrationClosed A := by
  exact And.intro E.arithmeticStructureClosed
    (And.intro E.periodMappingClosed
      (And.intro E.galoisRepresentationClosed E.algebraicityConstraintClosed))

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse