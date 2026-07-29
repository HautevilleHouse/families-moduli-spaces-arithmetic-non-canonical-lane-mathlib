import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.ShimuraVarieties
import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.ArithmeticModuliFibration

/-!
# Non-Abelian Hodge Correspondence Package
-/

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure NonAbelianHodgeCorrespondencePackage {G : RiemannianCurvaturePackage}
    {S : ShimuraVarietiesPackage G} {A : ArithmeticModuliFibrationPackage S} where
  localSystemModuli : Prop
  higgsBundleModuli : Prop
  nonAbelianHodgeIsomorphism : Prop
  algebraicStructure : Prop

structure NonAbelianHodgeCorrespondenceEvidence {G : RiemannianCurvaturePackage}
    {S : ShimuraVarietiesPackage G} {A : ArithmeticModuliFibrationPackage S}
    (H : NonAbelianHodgeCorrespondencePackage A) where
  localSystemModuliClosed : H.localSystemModuli
  higgsBundleModuliClosed : H.higgsBundleModuli
  nonAbelianHodgeIsomorphismClosed : H.nonAbelianHodgeIsomorphism
  algebraicStructureClosed : H.algebraicStructure

def NonAbelianHodgeCorrespondenceClosed {G : RiemannianCurvaturePackage}
    {S : ShimuraVarietiesPackage G} {A : ArithmeticModuliFibrationPackage S}
    (H : NonAbelianHodgeCorrespondencePackage A) : Prop :=
  H.localSystemModuli ∧ H.higgsBundleModuli ∧ H.nonAbelianHodgeIsomorphism ∧ H.algebraicStructure

theorem non_abelian_hodge_correspondence_closed_from_evidence
    {G : RiemannianCurvaturePackage} {S : ShimuraVarietiesPackage G}
    {A : ArithmeticModuliFibrationPackage S}
    (H : NonAbelianHodgeCorrespondencePackage A)
    (E : NonAbelianHodgeCorrespondenceEvidence H) : NonAbelianHodgeCorrespondenceClosed H := by
  exact And.intro E.localSystemModuliClosed
    (And.intro E.higgsBundleModuliClosed
      (And.intro E.nonAbelianHodgeIsomorphismClosed E.algebraicStructureClosed))

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse