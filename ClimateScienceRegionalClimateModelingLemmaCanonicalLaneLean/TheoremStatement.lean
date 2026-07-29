import canonicalLaneMathlib.AdmissibleClass
import ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean

structure TheoremStatement where
  region : String
  lemmaStatement : String
  admissible : Prop
  constrainedClosure : Prop
  constrainedClosureProof : constrainedClosure

def climateTheorem : TheoremStatement :=
  { region := "Global",
    lemmaStatement := "Regional climate models admit admissible closures under Milankovitch constraints.",
    admissible := ∀ A : AdmissibleClass, ConstrainedClimateClosure A,
    constrainedClosure := ∀ A : AdmissibleClass, ConstrainedClimateClosure A,
    constrainedClosureProof := λ A => constrained_climate_endgame A
  }

theorem climate_theorem_holds : climateTheorem.constrainedClosure := by
  exact climateTheorem.constrainedClosureProof

end ClimateScienceRegionalClimateModelingLemmaCanonicalLaneLean
end HautevilleHouse
