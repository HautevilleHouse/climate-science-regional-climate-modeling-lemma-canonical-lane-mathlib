import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure IceCoreIsotopeThermometryPackage where
  deltaO18Measured : Prop
  deltaDMeasured : Prop
  temperatureReconstruction : Prop
  fractionationModel : Prop
  calibrationFromModern : Prop

structure IceCoreIsotopeThermometryEvidence (I : IceCoreIsotopeThermometryPackage) where
  deltaO18MeasuredClosed : I.deltaO18Measured
  deltaDMeasuredClosed : I.deltaDMeasured
  temperatureReconstructionClosed : I.temperatureReconstruction
  fractionationModelClosed : I.fractionationModel
  calibrationFromModernClosed : I.calibrationFromModern

def IceCoreIsotopeThermometryClosed (I : IceCoreIsotopeThermometryPackage) : Prop :=
  I.deltaO18Measured ∧ I.deltaDMeasured ∧ I.temperatureReconstruction ∧
  I.fractionationModel ∧ I.calibrationFromModern

theorem ice_core_isotope_thermometry_closed_from_evidence
    (I : IceCoreIsotopeThermometryPackage)
    (E : IceCoreIsotopeThermometryEvidence I) : IceCoreIsotopeThermometryClosed I := by
  exact And.intro E.deltaO18MeasuredClosed
    (And.intro E.deltaDMeasuredClosed
      (And.intro E.temperatureReconstructionClosed
        (And.intro E.fractionationModelClosed E.calibrationFromModernClosed)))

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse