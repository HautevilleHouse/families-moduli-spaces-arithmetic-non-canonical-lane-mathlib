import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.HeckeEquivariance

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedObject where
  space : Type
  topology : TopologicalSpace space
  moduliStack : Type
  arithmeticStructure : Prop
  galoisRepresentation : Prop
  conclusion : galoisRepresentation

structure GaloisRepresentationPackage {M : ModuliSpacePackage}
    {C : ArithmeticCompactificationPackage M} {H : HeckePackage C} where
  compatibleSystem : Prop
  semiSimplicity : Prop
  independenceL : Prop
  tateConjectureForm : Prop

structure GaloisEvidence {M : ModuliSpacePackage}
    {C : ArithmeticCompactificationPackage M} {H : HeckePackage C}
    (G : GaloisRepresentationPackage H) where
  compatibleSystemClosed : G.compatibleSystem
  semiSimplicityClosed : G.semiSimplicity
  independenceLClosed : G.independenceL
  tateConjectureFormClosed : G.tateConjectureForm

def GaloisRepresentationClosed {M : ModuliSpacePackage}
    {C : ArithmeticCompactificationPackage M} {H : HeckePackage C}
    (G : GaloisRepresentationPackage H) : Prop :=
  G.compatibleSystem ∧ G.semiSimplicity ∧ G.independenceL ∧ G.tateConjectureForm

theorem galois_representation_closed_from_evidence
    {M : ModuliSpacePackage} {C : ArithmeticCompactificationPackage M}
    {H : HeckePackage C} (G : GaloisRepresentationPackage H)
    (E : GaloisEvidence G) : GaloisRepresentationClosed G := by
  exact And.intro E.compatibleSystemClosed
    (And.intro E.semiSimplicityClosed
      (And.intro E.independenceLClosed E.tateConjectureFormClosed))

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.galoisRepresentation

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse
