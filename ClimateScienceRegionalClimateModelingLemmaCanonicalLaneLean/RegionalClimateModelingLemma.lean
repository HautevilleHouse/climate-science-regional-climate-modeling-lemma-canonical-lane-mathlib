import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure GridCell where
  latitude : ℝ
  longitude : ℝ
  elevation : ℝ

defaultGridCell : GridCell :=
  { latitude := 45.0, longitude := 10.0, elevation := 500.0 }

structure RegionalClimateModel where
  grid : GridCell
  boundaryConditions : Prop
  parameterization : Prop
  numericalScheme : Prop
  outputVariables : Prop

defaultRegionalModel : RegionalClimateModel :=
  { grid := defaultGridCell,
    boundaryConditions := True,
    parameterization := True,
    numericalScheme := True,
    outputVariables := True }

structure RegionalClimateModelEvidence (R : RegionalClimateModel) where
  gridDefined : R.grid.latitude > -90 ∧ R.grid.latitude < 90 ∧ R.grid.longitude > -180 ∧ R.grid.longitude < 180
  boundaryConditionsClosed : R.boundaryConditions
  parameterizationClosed : R.parameterization
  numericalSchemeClosed : R.numericalScheme
  outputVariablesClosed : R.outputVariables

def RegionalClimateModelClosed (R : RegionalClimateModel) : Prop :=
  R.grid.latitude > -90 ∧ R.grid.latitude < 90 ∧ R.grid.longitude > -180 ∧ R.grid.longitude < 180 ∧
  R.boundaryConditions ∧ R.parameterization ∧ R.numericalScheme ∧ R.outputVariables

theorem regional_climate_model_closed_from_evidence (R : RegionalClimateModel) (Ev : RegionalClimateModelEvidence R) :
    RegionalClimateModelClosed R := by
  refine And.intro Ev.gridDefined.left (And.intro Ev.gridDefined.right.left (And.intro Ev.gridDefined.right.right.left
    (And.intro Ev.gridDefined.right.right.right
      (And.intro Ev.boundaryConditionsClosed
        (And.intro Ev.parameterizationClosed
          (And.intro Ev.numericalSchemeClosed Ev.outputVariablesClosed))))))

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse