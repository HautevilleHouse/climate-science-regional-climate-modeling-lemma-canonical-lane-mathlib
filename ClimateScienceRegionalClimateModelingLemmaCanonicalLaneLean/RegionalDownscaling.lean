import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure RegionalDownscalingPackage where
  globalForcingProvided : Prop
  regionalDomainDefined : Prop
  dynamicalCoreInitialized : Prop
  physicsParameterizations : Prop
  boundaryConditionsUpdated : Prop

structure RegionalDownscalingEvidence (R : RegionalDownscalingPackage) where
  globalForcingProvidedClosed : R.globalForcingProvided
  regionalDomainDefinedClosed : R.regionalDomainDefined
  dynamicalCoreInitializedClosed : R.dynamicalCoreInitialized
  physicsParameterizationsClosed : R.physicsParameterizations
  boundaryConditionsUpdatedClosed : R.boundaryConditionsUpdated

def RegionalDownscalingClosed (R : RegionalDownscalingPackage) : Prop :=
  R.globalForcingProvided ∧ R.regionalDomainDefined ∧ R.dynamicalCoreInitialized ∧
  R.physicsParameterizations ∧ R.boundaryConditionsUpdated

theorem regional_downscaling_closed_from_evidence
    (R : RegionalDownscalingPackage) (E : RegionalDownscalingEvidence R) :
    RegionalDownscalingClosed R := by
  exact And.intro E.globalForcingProvidedClosed
    (And.intro E.regionalDomainDefinedClosed
      (And.intro E.dynamicalCoreInitializedClosed
        (And.intro E.physicsParameterizationsClosed
          E.boundaryConditionsUpdatedClosed)))

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse