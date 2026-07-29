import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure DansgaardOeschgerEvent where
  warmingRate : ℝ
  duration : ℝ
  amplitude : ℝ
  onset : ℝ

defaultWarmingRate : ℝ := 0.1
defaultDuration : ℝ := 1000.0
defaultAmplitude : ℝ := 5.0
defaultOnset : ℝ := 0.0

structure AbruptClimateShiftPackage where
  event : DansgaardOeschgerEvent
  triggerMechanism : Prop
  oceanicCirculationResponse : Prop
  atmosphericTeleconnection : Prop

defaultAbruptShift : AbruptClimateShiftPackage :=
  { event := { warmingRate := defaultWarmingRate, duration := defaultDuration, amplitude := defaultAmplitude, onset := defaultOnset },
    triggerMechanism := True,
    oceanicCirculationResponse := True,
    atmosphericTeleconnection := True }

structure AbruptClimateShiftEvidence (A : AbruptClimateShiftPackage) where
  eventDefined : A.event.warmingRate > 0 ∧ A.event.duration > 0
  triggerMechanismClosed : A.triggerMechanism
  oceanicCirculationResponseClosed : A.oceanicCirculationResponse
  atmosphericTeleconnectionClosed : A.atmosphericTeleconnection

def AbruptClimateShiftClosed (A : AbruptClimateShiftPackage) : Prop :=
  A.event.warmingRate > 0 ∧ A.event.duration > 0 ∧ A.triggerMechanism ∧ A.oceanicCirculationResponse ∧ A.atmosphericTeleconnection

theorem abrupt_climate_shift_closed_from_evidence (A : AbruptClimateShiftPackage) (Ev : AbruptClimateShiftEvidence A) :
    AbruptClimateShiftClosed A := by
  exact And.intro Ev.eventDefined.left
    (And.intro Ev.eventDefined.right
      (And.intro Ev.triggerMechanismClosed
        (And.intro Ev.oceanicCirculationResponseClosed Ev.atmosphericTeleconnectionClosed)))

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse