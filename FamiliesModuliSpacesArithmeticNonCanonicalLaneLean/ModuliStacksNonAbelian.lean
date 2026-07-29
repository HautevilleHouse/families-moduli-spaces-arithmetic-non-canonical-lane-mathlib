import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.ArithmeticNonClassPackage

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ModuliStacksNonAbelianPackage {A : ArithmeticNonClassPackage} where
  stackyStructure : Prop
  nonAbelianCohomology : Prop
  arithmeticGaloisAction : Prop
  tameGeometry : Prop

structure ModuliStacksNonAbelianEvidence {A : ArithmeticNonClassPackage}
    (M : ModuliStacksNonAbelianPackage A) where
  stackyStructureClosed : M.stackyStructure
  nonAbelianCohomologyClosed : M.nonAbelianCohomology
  arithmeticGaloisActionClosed : M.arithmeticGaloisAction
  tameGeometryClosed : M.tameGeometry

def ModuliStacksNonAbelianClosed {A : ArithmeticNonClassPackage}
    (M : ModuliStacksNonAbelianPackage A) : Prop :=
  M.stackyStructure ∧ M.nonAbelianCohomology ∧ M.arithmeticGaloisAction ∧ M.tameGeometry

theorem moduli_stacks_non_abelian_closed_from_evidence
    {A : ArithmeticNonClassPackage} (M : ModuliStacksNonAbelianPackage A)
    (E : ModuliStacksNonAbelianEvidence M) : ModuliStacksNonAbelianClosed M := by
  exact And.intro E.stackyStructureClosed
    (And.intro E.nonAbelianCohomologyClosed
      (And.intro E.arithmeticGaloisActionClosed E.tameGeometryClosed))

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse