import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure RegionalClimateModelPackage where
  domainGeometry : Type u
  atmosphericDynamics : Prop
  landSurfaceProcesses : Prop
  radiativeTransfer : Prop
  parameterization : Prop
  boundaryConditions : Prop

structure RegionalClimateModelEvidence (R : RegionalClimateModelPackage) where
  atmosphericDynamicsClosed : R.atmosphericDynamics
  landSurfaceProcessesClosed : R.landSurfaceProcesses
  radiativeTransferClosed : R.radiativeTransfer
  parameterizationClosed : R.parameterization
  boundaryConditionsClosed : R.boundaryConditions

def RegionalClimateModelClosed (R : RegionalClimateModelPackage) : Prop :=
  R.atmosphericDynamics ∧ R.landSurfaceProcesses ∧
  R.radiativeTransfer ∧ R.parameterization ∧ R.boundaryConditions

theorem regional_climate_model_closed_from_evidence
    (R : RegionalClimateModelPackage) (Ev : RegionalClimateModelEvidence R) :
    RegionalClimateModelClosed R := by
  exact And.intro Ev.atmosphericDynamicsClosed
    (And.intro Ev.landSurfaceProcessesClosed
      (And.intro Ev.radiativeTransferClosed
        (And.intro Ev.parameterizationClosed Ev.boundaryConditionsClosed)))

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse