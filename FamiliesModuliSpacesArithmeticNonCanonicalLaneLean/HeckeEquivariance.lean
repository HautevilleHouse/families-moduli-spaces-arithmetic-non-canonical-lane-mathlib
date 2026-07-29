import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.ArithmeticCompactification

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure HeckePackage {M : ModuliSpacePackage}
    {C : ArithmeticCompactificationPackage M} where
  heckeAlgebra : Type
  heckeAction : Prop
  eigensystem : Prop
  rationality : Prop

structure HeckeEvidence {M : ModuliSpacePackage}
    {C : ArithmeticCompactificationPackage M} (H : HeckePackage C) where
  heckeActionClosed : H.heckeAction
  eigensystemClosed : H.eigensystem
  rationalityClosed : H.rationality

def HeckeClosed {M : ModuliSpacePackage}
    {C : ArithmeticCompactificationPackage M} (H : HeckePackage C) : Prop :=
  H.heckeAction ∧ H.eigensystem ∧ H.rationality

theorem hecke_closed_from_evidence {M : ModuliSpacePackage}
    {C : ArithmeticCompactificationPackage M} (H : HeckePackage C)
    (E : HeckeEvidence H) : HeckeClosed H := by
  exact And.intro E.heckeActionClosed
    (And.intro E.eigensystemClosed E.rationalityClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse
