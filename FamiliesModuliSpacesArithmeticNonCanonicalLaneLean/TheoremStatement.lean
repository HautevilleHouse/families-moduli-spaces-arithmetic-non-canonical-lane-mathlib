import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.AdmissibleClass
import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure FamiliesModuliSpacesArithmeticNonAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  arithmeticStructure : Prop
  moduliSpace : Prop
  conclusion : arithmeticStructure ∧ moduliSpace

def FamiliesModuliSpacesArithmeticNonWitnessClosed (O : FamiliesModuliSpacesArithmeticNonAdmittedObject) : Prop :=
  O.arithmeticStructure ∧ O.moduliSpace

theorem theorem_statement_internalized :
    ∀ (A : AdmissibleClass), ConstrainedFamiliesModuliSpacesArithmeticNonClosure A := by
  intro A
  exact constrained_families_moduli_spaces_arithmetic_non_endgame A

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse
