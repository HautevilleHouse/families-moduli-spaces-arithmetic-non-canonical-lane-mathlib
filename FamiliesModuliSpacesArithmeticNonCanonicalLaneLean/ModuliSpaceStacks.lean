import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ModuliSpaceStacksPackage where
  stack : Type u
  site : Type v
  topology : site -> Prop
  fiberedCategory : Prop
  representability : Prop
  descentCondition : Prop

structure ModuliSpaceStacksEvidence (M : ModuliSpaceStacksPackage) where
  topologyClosed : M.topology M.site
  fiberedCategoryClosed : M.fiberedCategory
  representabilityClosed : M.representability
  descentConditionClosed : M.descentCondition

def ModuliSpaceStacksClosed (M : ModuliSpaceStacksPackage) : Prop :=
  M.topology M.site ∧ M.fiberedCategory ∧ M.representability ∧ M.descentCondition

theorem moduli_space_stacks_closed_from_evidence (M : ModuliSpaceStacksPackage)
    (E : ModuliSpaceStacksEvidence M) : ModuliSpaceStacksClosed M := by
  exact And.intro E.topologyClosed
    (And.intro E.fiberedCategoryClosed
      (And.intro E.representabilityClosed E.descentConditionClosed))

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse