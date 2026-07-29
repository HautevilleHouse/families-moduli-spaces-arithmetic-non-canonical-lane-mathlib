import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ModuliSpacePackage where
  baseScheme : Type
  moduliStack : Type
  coarseSpace : Type
  stratification : Type
  strataProperties : Prop
  boundaryComponents : Prop

structure StratificationEvidence (M : ModuliSpacePackage) where
  strataPropertiesClosed : M.strataProperties
  boundaryComponentsClosed : M.boundaryComponents

def ModuliSpaceStratificationClosed (M : ModuliSpacePackage) : Prop :=
  M.strataProperties ∧ M.boundaryComponents

theorem stratification_closed_from_evidence (M : ModuliSpacePackage)
    (E : StratificationEvidence M) : ModuliSpaceStratificationClosed M := by
  exact And.intro E.strataPropertiesClosed E.boundaryComponentsClosed

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse
