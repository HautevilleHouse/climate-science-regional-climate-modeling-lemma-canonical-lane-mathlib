import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure PaleoclimateProxiesPackage where
  iceCoreData : Type u
  sedimentCoreData : Type v
  isotopicRatio : Prop
  temperatureReconstruction : Prop
  datingMethod : Prop
  proxyCalibration : Prop

structure PaleoclimateProxiesEvidence (P : PaleoclimateProxiesPackage) where
  isotopicRatioClosed : P.isotopicRatio
  temperatureReconstructionClosed : P.temperatureReconstruction
  datingMethodClosed : P.datingMethod
  proxyCalibrationClosed : P.proxyCalibration

def PaleoclimateProxiesClosed (P : PaleoclimateProxiesPackage) : Prop :=
  P.isotopicRatio ∧ P.temperatureReconstruction ∧
  P.datingMethod ∧ P.proxyCalibration

theorem paleoclimate_proxies_closed_from_evidence
    (P : PaleoclimateProxiesPackage) (Ev : PaleoclimateProxiesEvidence P) :
    PaleoclimateProxiesClosed P := by
  exact And.intro Ev.isotopicRatioClosed
    (And.intro Ev.temperatureReconstructionClosed
      (And.intro Ev.datingMethodClosed Ev.proxyCalibrationClosed))

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse