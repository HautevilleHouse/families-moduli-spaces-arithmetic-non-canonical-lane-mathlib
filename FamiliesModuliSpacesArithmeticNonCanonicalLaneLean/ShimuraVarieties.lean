import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.RiemannianCurvature

/-!
# Shimura Varieties Package
-/

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ShimuraVarietiesPackage (G : RiemannianCurvaturePackage) where
  shimuraDatum : Type u
  hermitianSymmetricDomain : Type v
  arithmeticLattice : Prop
  canonicalModel : Prop
  heckeCorrespondences : Prop

structure ShimuraVarietiesEvidence {G : RiemannianCurvaturePackage}
    (S : ShimuraVarietiesPackage G) where
  arithmeticLatticeClosed : S.arithmeticLattice
  canonicalModelClosed : S.canonicalModel
  heckeCorrespondencesClosed : S.heckeCorrespondences

def ShimuraVarietiesClosed {G : RiemannianCurvaturePackage}
    (S : ShimuraVarietiesPackage G) : Prop :=
  S.arithmeticLattice ∧ S.canonicalModel ∧ S.heckeCorrespondences

theorem shimura_varieties_closed_from_evidence
    {G : RiemannianCurvaturePackage} (S : ShimuraVarietiesPackage G)
    (E : ShimuraVarietiesEvidence S) : ShimuraVarietiesClosed S := by
  exact And.intro E.arithmeticLatticeClosed
    (And.intro E.canonicalModelClosed E.heckeCorrespondencesClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse