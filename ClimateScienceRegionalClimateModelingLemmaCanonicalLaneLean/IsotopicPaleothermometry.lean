import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure IceCoreRecord where
  depth: Type u
  delta18O : Type v
  deltaD : Type w
  temperatureProxy : Prop
  datingUncertainty : Prop

def IsotopicPaleothermometryEvidence (I : IceCoreRecord) : Prop :=
  I.temperatureProxy ∧ I.datingUncertainty

theorem isotopic_paleothermometry_valid (I : IceCoreRecord) (E : IsotopicPaleothermometryEvidence I) :
    Prop := by
  exact E

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse
