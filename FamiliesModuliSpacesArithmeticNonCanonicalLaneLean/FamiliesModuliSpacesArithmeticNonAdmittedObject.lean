import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FamiliesModuliSpacesArithmeticNonSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FamiliesModuliSpacesArithmeticNonAdmittedObject where
  space : FamiliesModuliSpacesArithmeticNonSpace
  closedProperNorth : Prop
  systematicallyFinite : Prop
  model : Type
  modelTopology : TopologicalSpace model
  homeomorphicToModel : Prop
  conclusion : homeomorphicToModel

structure FamiliesModuliSpacesArithmeticNonEndgameState where
  object : FamiliesModuliSpacesArithmeticNonAdmittedObject

def FamiliesModuliSpacesArithmeticNonWitnessClosed (O : FamiliesModuliSpacesArithmeticNonAdmittedObject) : Prop :=
  O.homeomorphicToModel

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse