import Mathlib
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.BoundAtTwoAndThreeForFamily
import Formalism.SharpRestriction.GlobalTheoremInputs
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.JointConditionTameBound
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.CrysOnCond
import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates
import Formalism.SharpRestriction.LevelLetterCocycles.RamifiedCoefficientChains
import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.BaseSizes
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PolynomialBoundSetup
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GlobalCore
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CentralIdemCoeff
import Formalism.SharpRestriction.LevelLetterCocycles.IdempotentChoiceDepthZero
import Formalism.SharpRestriction.LevelLetterCocycles.TableLineDegreeTwo
import Formalism.SharpRestriction.LevelLetterCocycles.AdmissibleParameterJ
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlobalCongruenceCountOfRootDifferenceUnitStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGlobalStepObjectsOfCyclotomicGeneratorInerStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLocalSlotDataOffExceptionalPrimesStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmissibleOfLargeResidueChar
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoTopOfLocalTateDualityEulerCharStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsWachFunctorComparisonOfBhattScholzeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineCharactersGivenJumpsUnramifiedTwistsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HostRamificationIdxEqOne
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmissibleDictionary
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmissibleParametersOfLargeScale
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.JumpSetDistinctOfRealPlaceFacts
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.GaloisConditionFiveExtraOf
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.CoefficientCompatibilityOf
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ResidualIrreducibilityFormsEquivalent
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BigImageThirdCondition
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmG2OfDecomposition
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NoCharacterOffsetUnramified
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameDescentConditionsEveryLocalisation
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CongruenceBoundExtendedOfRationalBoundStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalBoundZeroAtLargePrimesOfCongruenceBoundStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParametersExcludedPrimesFewAndSmallAlongFamilyStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SetPointGood
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalBlochKatoConditionOfWachModulesStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LongOrbitsRowColengthInertLocalisationStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RowsCDRowConditionLocalBoundsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineLatticeWachModuleExistsProofStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrysOnCondOfEveryDatum
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RamifiedCoefficientChainsPrvTwentyFiveStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLiftingTheoremBOfBlochKatoTateDualityEulerCStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalConstantsFromAdmittedLocalGaloisStatementsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TheoremTbOfLocalBlochKatoDualityEulerStatement
import Formalism.SharpRestriction.LevelLetterCocycles.EmbeddingTypeJumps
import Formalism.SharpRestriction.LevelLetterCocycles.EmbeddingTypes
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.CommutingEndomorphismCondition
import Formalism.GaloisCohomology.LocalTateDualityK
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsRhoPtOfSplitting
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.FinrankMaxUnramifiedSubfieldPadicFinExtPos
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.SplitRep
import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.OneSubPhiOntoOfFilZero
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThickLetterWordLatticeSurjectionHypotheses
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AbsIrrDistinctConstituentsAfterExtensionStatement
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.JointCondTBAtRange
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.AmbientH1fOfLocalFiniteness
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineSummandAndDualFromInverseCharacterTwi
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsDeRhamOfIsCrystallineSpan
import Formalism.SharpRestriction.LevelLetterCocycles.LargeLevelLemmas
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CoefficientExtensionDecomposition
import Formalism.SharpRestriction.LevelLetterCocycles.SumRepresentations
import Formalism.SharpRestriction.LevelLetterCocycles.DecompositionData
import Development.AbelianVarietyTheory.Counterexamples.HeckeCharacterExamples.InertPlacesGoodSet
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.DecompositionInvariantsCondition
import Formalism.SharpRestriction.LevelLetterCocycles.RestPt
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.ResidualIrreducibleOfTheorem
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GaloisSideTwistedSelmerAuxiliaryPrimes
import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.JumpDictionary
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsWildInertiaCyclotomicElement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AmbientTypeConjugatePlaceAtSplitPrimeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RestrictionAtGoodPoints
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalGlobalAssembly
import Formalism.SharpRestriction.LevelLetterCocycles.ExistsInertiaCharpolyFactorOfTameType
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletelySplitPrimeHostPlaceProperties
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisRepBaseChange
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisRepUniqueBaseChange
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ResidualAbsIrredGoodPointOfResidualIrred
import Formalism.SharpRestriction.LevelLetterCocycles.JointConditionsZpowers.SemisimpleDecompositionOf
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TypePrimeExceedsConstant
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SignsAndJumpSetsAtTypePrimeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PointConditionsOfPointGaloisRepFamiliesStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalGlobalCompatibilityAtTypes
import Formalism.SharpRestriction.LevelLetterCocycles.PairedCharacterCondition
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameDescentConditionsEveryLocalisationStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LNotMemGset
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmFonOfPoints
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlockAndTorsionExponentBoundsCanonicalHubData
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DecompositionLocalAboveStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DecompositionLocalAway
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionExponentLeOfJumpsAtEmbeddingsUnramifiedStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HostCompletionLeMaxUnramifiedPadicStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankLeOfSubsetClosureRange
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ChiCrysOfConstituent
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitRowPrimeOf
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmissibleAtGoodPointsOfCoefRingTakenAtLiveStatement
import Development.AutomorphicArithmetic.CyclotomicBounds.ZmodTwoQuadraticNeZero
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AmbientFiltrationEveryDeclarationStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AmbientDualCrystallineAndPureOfDecompStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AmbientJumpBlockOfAdmissibleDecompositionStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChiOneAwayFromType
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CrystallineLocalCoefficients
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PsiAtPsiAt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontainePropertiesAllPlacesStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoFiniteTrivialRepUnramifiedColumnPlacesAStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmG2TwistSetup
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmG5Setup
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftColumnRowSetup
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmH0Setup
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AmbientSubContinuitySetup
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorAllOfTateDualityEulerCharStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateFinitenessAllOfLocalTateDualityStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CharpolySpanAndHomRelationsOfAdmissible
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChebotarevDegreeOne
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MaxLengthLocalInvariantsTwistedFractionModIntegeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TorsionExponentKillsInvariantsNoJumpZeroStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LenUnitInvariantsTwistedLatticeLeOfKillingExponeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NonPlacePartLocalBoundLeMiddleRangeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.StarInequalityRowsADOfGlobalTheoremsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BoundAtPointAllLocalisationsOfObjectConditionsAlStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitCaseBoundAtPointOfAdmittedItemsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ParametersConditionsMonotoneInConstantStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodPointMultiplicityLeRankProofStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalBoundTableFromDataBandConditionStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalBoundTableRowsCDAdmissibleStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AdmissibleParametersFamilyConstStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsContinuousComplementFamily
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GaloisRepsCuspidal
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SemisimpleOfInjective
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChosenTwistAnnihilatesSelmerGroupsStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpecialPrimesSmallAlongFamilyStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.StarBoundOfMultiplicity
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TheoremECorollaryAClosingAllDataStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwoEALe
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalBoundTableFromDataRowBRowEntries
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ImportsTerMore
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PolyValLeSumMulPow
import Formalism.SharpRestriction.ParConsts
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.HodgeTateJumpsAtModulesForSign
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FamJointBCD
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.InertPrimeNeTypePrimeStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontainePropertiesAllPlacesAlt
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FontaineBoundsCrystallineDeRhamAll
import Development.AutomorphicArithmetic.ResidueCharacters.RowDef
import Development.AutomorphicArithmetic.ResidueCharacters.ConclusionSplitOfHub
import Development.AutomorphicArithmetic.ResidueCharacters.PlaceTypeConj
import Development.AutomorphicArithmetic.ResidueCharacters.LenUnitInvariantsLe
import Development.AutomorphicArithmetic.ResidueCharacters.LocAll
import Development.AutomorphicArithmetic.ResidueCharacters.NumRow
import Development.AutomorphicArithmetic.CyclotomicBounds.SmallFacts
import Development.AutomorphicArithmetic.ResidueCharacters.NumCost
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ConductorRootSubOneLengthLeTameValue
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.BoundAtTwoThreeFamilyFon
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.PolynomialBoundSetup
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NStarS
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.DeRhamFamilyAway
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ExistsSetupLargeStatement
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NormChoiceFacts
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AdmissibleParameterEventuallyStatement
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.FamJointBCDClosed
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HoldsAll
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RowsADInSettingStatement
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CuspidalGaloisUnramified
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.EtaLocLeRhsStatement
import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalGlobalCompatibility

set_option synthInstance.maxHeartbeats 200000

section
open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations GlobalTheory.NLink
namespace GlobalTheory.NLinkClose
theorem main_alt_alt : Hypotheses₂ → ∀ {eps : ℝ} (Fm : FamP eps), ∀ (C : ℝ) (CT : ℕ), 0 ≤ C → TwGood Fm → _root_.GlobalTheory.NLink.FactsFAlt Fm C CT →
    _root_.GlobalTheory.NLink.BoundAtTwoThreeFamilyFonAlt Fm → ConclF Fm := by
  intro hP eps Fm C CT hC0 hTw hF h23
  obtain ⟨C₀, h03⟩ := GlobalTheory.T.theoremE_corollaryA_closing_all_data hP.bk hP.tate hP.euler
  obtain ⟨constantFirstHub, Q, h67⟩ := _root_.GlobalTheory.T.embedding_jumps_aux2_of_setup
  obtain ⟨C1, xpar, hC1, hpar⟩ := GlobalTheory.T.admissible_parameters_family_const Fm
  obtain ⟨Ca, xa, ha⟩ := h23
  obtain ⟨Cb, xb, hb'⟩ := _root_.UpperTheory.N.starSF_of_prints hP Fm
  set ComplexParameterFamilyContinuity : ℝ := max 0 (max Ca Cb) with hC23def
  set x23 : ℝ := max 1 (max xa xb) with hx23def
  set C₂ : ℝ := max C₀ 1 with hC₂def
  set Cs : ℝ := max (3 * C₂ + 1) (max 22365 (max (FamilyRepresentationConstants.CG constantFirstHub Q) (max (2000 * (C + 1) + 5 * C1)
    (max C1 (max ComplexParameterFamilyContinuity (CT : ℝ)))))) with hCsdef
  have hA : 3 * C₂ + 1 ≤ Cs := by simp only [hCsdef, le_max_iff, le_refl, true_or]
  have hK : (22365 : ℝ) ≤ Cs := by simp only [hCsdef, le_max_iff, le_refl, true_or, or_true]
  have hG : FamilyRepresentationConstants.CG constantFirstHub Q ≤ Cs := by simp only [hCsdef, le_max_iff, le_refl, true_or, or_true]
  have hT : 2000 * (C + 1) + 5 * C1 ≤ Cs := by simp only [hCsdef, le_max_iff, le_refl, true_or, or_true]
  have hP1 : C1 ≤ Cs := by simp only [hCsdef, le_max_iff, le_refl, true_or, or_true]
  have h23C : ComplexParameterFamilyContinuity ≤ Cs := by simp only [hCsdef, le_max_iff, le_refl, true_or, or_true]
  have hCT : (CT : ℝ) ≤ Cs := by simp only [hCsdef, le_max_iff, le_refl, or_true]
  have hCs1 : (1 : ℝ) ≤ Cs := by linarith
  have hCs0 : (0 : ℝ) ≤ Cs := by linarith
  have hC₂1 : (1 : ℝ) ≤ C₂ := le_max_right _ _
  have hC₂0 : C₀ ≤ C₂ := le_max_left _ _
  have hRle : (rowC C₂).Le Cs := by
    simp only [KillingConditions.RowK.Le, KillingConditions.RowK.K₁, KillingConditions.RowK.K₂, KillingConditions.RowK.K₃, rowC]
    refine ⟨hC₂1, ?_, ?_, ?_, hCs1, hA, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith
  obtain ⟨xset, hset⟩ := _root_.GlobalTheory.T.exists_hubData_admJ_setup hP Fm C C₂ CT hTw hF
  obtain ⟨xexc, hexc⟩ := GlobalTheory.T.excludedPrimes_few_and_small_along_family Fm
  obtain ⟨xsm, hsm⟩ := GlobalTheory.T.specialPrimes_small_along_family Fm Cs hCs1
  obtain ⟨xE, hE⟩ := _root_.GlobalTheory.T.eventually_congBound_of_facts hP Fm
  obtain ⟨xbcd, hbcd⟩ := _root_.GlobalTheory.HTW.RecS.fam_jointBCD_closed_alt hP.font GlobalTheory.Per.FontaineAll.fontaine_bounds
    GlobalTheory.FontaineAdm.fontaineProperties_all_places _root_.GlobalTheory.JumpStatement.holds_all_alt Fm (rowC C₂)
  refine ⟨Cs, max xset (max xexc (max xsm (max xE (max xbcd (max xpar x23))))), ?_⟩
  intro x hx0 hx i hSha
  simp only [ge_iff_le, max_le_iff] at hx0
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := hx0
  obtain ⟨exc, hexcEq, hexcOK⟩ := hexc x h2 hx i
  obtain ⟨HW, F, Cm, X, hXexc, hAdmJ, hS⟩ := hset x h1 hx i hSha exc
  obtain ⟨hFa, hEx⟩ := hF x hx i
  obtain ⟨hSm, -, -, hb⟩ := hsm x h3 hx i
  have hBCD := hbcd x h5 hx i HW X hAdmJ hS.canon.fam
  have hmid := _root_.GlobalTheory.T.star_ad_and_bb_le_of_joint_cond hP (Fm.D x i) (Fm.L x i) (Fm.params x hx i) (Fm.ex x hx i).nch HW F Cm X C₂ hS hC₂1
    ((h03 (Fm.D x i) HW F Cm).2 C₂ hC₂0) hBCD
  have hparC1 := hpar x h6 hx i
  have hmult := GlobalTheory.T.goodPointMultiplicityLeRank_proof (Fm.D x i) (Fm.L x i) hFa.Conclusion1.2.2 hFa.Conclusion2.2.2 hFa.toCore.isot hFa.c2
  have hSizeG : SizeG (Fm.L x i) := (Fm.sizes x hx i).2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have hCTb : (CT : ℝ) ≤ (Fm.L x i).sc.b := le_trans hCT hb
  have htyp := _root_.GlobalTheory.T.star_bound_of_paired_character_condition hP (Fm.D x i) (Fm.L x i) (Fm.params x hx i) (Fm.ex x hx i).nch HW F Cm X C₂ hS C C1 CT
    hC0 hC1 hCTb hEx.2 hmult hparC1 hSizeG
  have hmono := GlobalTheory.T.sizeConditions_mono (Fm.D x i) (Fm.L x i) (Fm.params x hx i) X
  have hCong := hE x h4 hx i hFa
  have hlarge := GlobalTheory.T.localBoundZeroAtLargePrimes_of_congruenceBound (Fm.D x i) (Fm.L x i) X.r X.ρ X.exc hCong hFa.toCore.weight hS.canon.fam hS.kill hSha
    hSm.1 (by rw [hXexc]; exact hexcEq)
  have hxa : xa ≤ x := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) h7
  have hxb : xb ≤ x := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) h7
  have hmid23 : ∀ C', C' ≤ ComplexParameterFamilyContinuity → midF (Fm.L x i) C' ≤ midF (Fm.L x i) ComplexParameterFamilyContinuity := fun C' hC' =>
    midF_mono _ hC' (le_max_left _ _)
  have htwo : StarF (Fm.L x i) X.ρ ComplexParameterFamilyContinuity := by
    refine starF_of _ _ _ (fun k hk hl π hπ => ?_) (fun k hk hl h5 π hπ => ?_)
    · have h := ha x hxa hx i HW F Cm X C₂ hS k hk hl π hπ
      have h' := hmid23 Ca (le_trans (le_max_left _ _) (le_max_right _ _))
      unfold Bd at h ⊢; linarith
    · have h := hb' x hxb hx i HW F Cm X C₂ hS k hk hl h5 π hπ
      have h' := hmid23 Cb (le_trans (le_max_right _ _) (le_max_right _ _))
      unfold Bd at h ⊢; linarith
  refine ⟨X, ?_⟩
  exact
    { pos := hCs0
      pass := GlobalTheory.EtaPassage.main _ hEx.1
      mult := hmult
      rank := hFa.toCore.a3 _
      kill := hS.kill
      num := ⟨GlobalTheory.NLink.RowA.main _ _ (Fm.params x hx i) HW X _ Cs hS.canon.data hRle,
        GlobalTheory.NLink.localBoundTableFromData_rowB_rowEntries _ _ (Fm.params x hx i) HW X _ Cs hS.canon.data hRle,
        (GlobalTheory.T.mediumInert_smallInert_lengthBound_tabX _ _ (Fm.params x hx i) HW X _ Cs hS.canon.data hRle).1,
        (GlobalTheory.T.mediumInert_smallInert_lengthBound_tabX _ _ (Fm.params x hx i) HW X _ Cs hS.canon.data hRle).2,
        GlobalTheory.T.localBoundTableFromData_bandCondition _ _ (Fm.params x hx i) HW X _ Cs hS.canon.data hRle hS.par67⟩
      mid := hmid.1
      bb := ((hmono 7200 Cs (by linarith) hCs0).2.2.1) hmid.2
      large := hlarge
      exc := by rw [hXexc]; exact hexcOK
      two := ((hmono ComplexParameterFamilyContinuity Cs h23C hCs0).1) htwo
      ram := GlobalTheory.NLink.starG_of_thmB _ _ (Fm.params x hx i) X.ρ constantFirstHub Cs Q hG
        (h67 hP _ _ (Fm.params x hx i) _ HW F Cm X C₂ hS) hS.kill hSha
      typ := ((hmono _ Cs hT hCs0).2.1) htyp
      par := ((hmono C1 Cs hP1 hCs0).2.2.2) hparC1
      small := hSm }
end GlobalTheory.NLinkClose
end
