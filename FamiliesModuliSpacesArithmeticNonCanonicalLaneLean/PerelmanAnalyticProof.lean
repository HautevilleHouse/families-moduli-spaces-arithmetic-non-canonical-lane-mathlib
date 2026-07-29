import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FamiliesModuliSpacesArithmeticNonCanonicalLaneLean

structure ModuliAnalyticCertificate (A : AdmissibleClass) where
  galoisRepresentation : Prop
  moduliCompactness : Prop
  arithmeticNondegeneracy : Prop
  galoisRepresentationClosed : galoisRepresentation
  moduliCompactnessClosed : moduliCompactness
  arithmeticNondegeneracyClosed : arithmeticNondegeneracy

def ModuliAnalyticCertificateClosed (A : AdmissibleClass) (C : ModuliAnalyticCertificate A) : Prop :=
  C.galoisRepresentation ∧ C.moduliCompactness ∧ C.arithmeticNondegeneracy

theorem moduli_analytic_certificate_closed (A : AdmissibleClass) (C : ModuliAnalyticCertificate A) : ModuliAnalyticCertificateClosed A C := by
  exact And.intro C.galoisRepresentationClosed (And.intro C.moduliCompactnessClosed C.arithmeticNondegeneracyClosed)

end FamiliesModuliSpacesArithmeticNonCanonicalLaneLean
end HautevilleHouse