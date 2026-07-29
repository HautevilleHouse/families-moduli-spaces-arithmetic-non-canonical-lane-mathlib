import FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FamiliesModuliSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FamiliesModuliArithmeticNonAdmittedObject where
  space : FamiliesModuliSpace
  moduliProblem : Prop
  arithmeticConstraint : Prop
  nonArithmeticClosure : Prop
  conclusion : nonArithmeticClosure

structure FamiliesModuliEndgameState where
  object : FamiliesModuliArithmeticNonAdmittedObject

def FamiliesModuliWitnessClosed (O : FamiliesModuliArithmeticNonAdmittedObject) : Prop :=
  O.nonArithmeticClosure

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse