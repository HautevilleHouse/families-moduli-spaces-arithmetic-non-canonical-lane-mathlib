import HautevilleHouse.FamiliesModuliSpacesArithmeticNonCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FamiliesModuliSpacesArithmeticNonWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse