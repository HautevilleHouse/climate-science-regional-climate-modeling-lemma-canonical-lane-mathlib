import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure EnergyBalanceModelPackage where
  surfaceTemperature : Type u
  incomingSolarRadiation : Prop
  outgoingLongwaveRadiation : Prop
  radiativeForcing : Prop
  heatCapacity : Prop
  energyBalanceEquation : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  incomingSolarRadiationClosed : E.incomingSolarRadiation
  outgoingLongwaveRadiationClosed : E.outgoingLongwaveRadiation
  radiativeForcingClosed : E.radiativeForcing
  heatCapacityClosed : E.heatCapacity
  energyBalanceEquationClosed : E.energyBalanceEquation

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.incomingSolarRadiation ∧ E.outgoingLongwaveRadiation ∧
  E.radiativeForcing ∧ E.heatCapacity ∧ E.energyBalanceEquation

theorem energy_balance_model_closed_from_evidence
    (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  exact And.intro Ev.incomingSolarRadiationClosed
    (And.intro Ev.outgoingLongwaveRadiationClosed
      (And.intro Ev.radiativeForcingClosed
        (And.intro Ev.heatCapacityClosed Ev.energyBalanceEquationClosed)))

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse