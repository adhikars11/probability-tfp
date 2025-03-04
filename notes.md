# Meeting Notes 

## 02/24/2025 : Susi and Mati. Macro model plan

Solving IAM using deep learning methods:
[Paper](https://onlinelibrary.wiley.com/doi/epdf/10.1111/iere.12575)
[Code Repo](https://github.com/ClimateChangeEcon/Climate_in_Climate_Economics/tree/main/DEQN_for_IAMs)

To send to Mati: 
- [Uncertainty in climate macro literature review](https://docs.google.com/document/d/1-VAmwIg41OCVLjOs1vF8VlqDv27Eq4O2qSPX1-jfqX4/edit?tab=t.0)
- [Simple IAM structure pg. 3](https://resources.environment.yale.edu/gillingham/ClimateChangeMacro_annual_reviews.pdf)
- [Climate Change through the Lens of Macroeconomic Modeling](https://www.nber.org/papers/w32963)
- [Deep uncertainty quantification:](https://drive.google.com/file/d/13XXl61qambMuapAhHGAKWw8qASPOUgB8/view)

To do: 
- Read Aiyaggari
- Read sylized IAM structure
- Think about a simple macro model that captures our micro theory thusfar

Goal: 
- IAM model -> Stochastic Damage function
- Risk externality -> Endogenize the stochastic damage function via costly action
- Add endogeneous damage function into a standard simple IAM model

### Ideas/concepts
- Risk aggregate externality or idiosyncratic aiyagari
- Simple IAM model

## 02/13/2025 : Susi and Mati. catch up on

To do: 
- Solve for idiosyncratic risk for now, not aggregate so that the prices are deterministic.
- For beta type, it's a fully deterministic problem and for alpha type, it's two period. 
- Add y to beta type.
- FOCs -> use market clearing to get endogeneous prices. 


## 01/13/2025 : Susi and Mati. catch up on

Big Picture of the Project:

Externalities: The main externalities of climate change are studied as affecting the first moment. Emissions will also affect the Total Factor Productivity (TFP) distribution.
Two main contributions:

Risk Externality: Climate change will impact higher moments (likely referring to higher-order moments such as skewness and kurtosis in the distribution of economic variables).
Constrained Inefficiency: Climate policy poses significant challenges. It's valid to approach this issue using the concept of "constrained inefficiency" (i.e., inefficiency arising from policy or structural constraints).

To Do:
There are still choices to be made regarding how to model these externalities.
Shisham will explore one version of the model.
Mati will investigate another version.
We will meet next Monday to see that in detail.

Aspirations for the Model:

The goal is to develop a standard macroeconomic model with the addition of 1 or 2 features related to climate change (such as risk and/or inefficiency).
Micro data (such as Fried's data) will be used for calibration.

References used today:
https://www.rba.gov.au/publications/workshops/research/2023/pdf/rba-workshop-2023-airaudo-pappa-seoane.pdf


## 12/06/2024 : Susi and Mati

**Define research question**
What is the effect of an externality affecting the probability of different states of nature? Motivation: The more pollution, the higher the probability of a bad state. How is the solution using constrained efficiency?

**This paper**
New underexplored channel. New approach: constrained efficiency.

**Methodology**
General equilibrium (GE) model.

**Next steps**

- Mati: Solve the set-up similar to Shisham's but with shock-no shock formulation see eq. 29 here [https://acarvajal.weebly.com/uploads/9/9/5/8/99589200/csext_jme.pdf].
- Build up on our respestive models: 
   - Possibility: Find the optimal choice of e for the type beta agent and see if by forcing these guys to have a different y, you incentivize them into a different e that makes both agents better off.
  
- For later: Instead of allocation perturbation, introduce a tax on trade of assets, buyer pays tau but seller gets (q-tau) and revenue is redistributed lump sum. 


## 11/05/2024 : Susi and Mati

**To Do: Add papers into Issues/Lit.Review**

1. **Start with the list**  
   -> Link to the list: [Insert link here]

---

### (i) List of candidates closest to externality via distribution in climate macro literature

- **Giglio, Kelly, Pruitt (2016)** - *Systemic Risks and Shocks to the Real Economy*  
  Focuses on systemic risks and their effects on the economy, relevant for understanding externalities in climate economics.

- **Barnett et al. (2021)** - *Three Alternative Uncertainty Channels*  
  Discusses uncertainty in climate models through carbon dynamics, temperature dynamics, and damage functions.

- **Lemoine and Traeger (2016)** - *Regime Shifting in the Climate System*  
  Examines the potential for climate regime shifts and their implications for economic modeling.

- **Cai and Lontzek (2019)** - *Integrating Uncertainty in DICE-type Models*  
  Incorporates uncertainty into integrated assessment models (IAMs), especially regarding the impacts of climate change.

- **Bansal, Kiku, and Ochoa (2019)** - *Effect of Climate Risks on Asset Pricing*  
  Investigates how climate risks affect asset pricing and financial markets.

- **Weitzman (2014)** - *Fat Tails and the Social Cost of Carbon (SCC)*  
  Analyzes the implications of fat-tailed distributions in climate models and its impact on the SCC.

- **Hassler, Krusell, and Olovsson (2018)** - *IAM with Sensitivity Analysis*  
  Provides a sensitivity analysis of IAMs to better account for uncertainty in climate-economic models.

- **Jurado, Ludvigson, and Ng (2015)** - *Measuring Uncertainty*  
  Introduces a framework for measuring uncertainty in economic models, with applications to climate change.

---

### (ii) Constrained Inefficiency  
- “Constrained-Efficient Allocations in the Growth Model with Idiosyncratic Shocks”, with
Julio Davila, Jay Hong and Per Krusell. Econometrica, Vol. 80, No. 6 (November, 2012),
pp. 2431-67.

---

### (iii) Sabine Mauderer (NGFS)  
- **Mauderer (2024)** - *Climate Macroeconomic Modelling Handbook (NGFS)*  
  A comprehensive overview of climate macroeconomic modeling techniques and frameworks, published by the Network for Greening the Financial System (NGFS).







## 10/29/2024 : Con Andrés

**To Do:**
- Do the literature review to identify the paper closest to this of externality via probability idea in climate-macro literature.
- Look into the idea of constraned subobtimality and its application in macroeconomic literature. 
- How has the climate change literature dealt with undertainty with distribution?

**Other comments:**
- The idea is very interesting, should pursue it.
- Hold on to writing a model for now and do the literature review instead.
- When thinking of changing the underlying distribution, rather than the externality affecting just the moments like mean or variance of some known distribution, allow for the distribution to change from a finite variance known distribution to an infinite variance fat-tailed distribution.

---

## 10/26/2024

We discussed the idea. We talked about Andrés’ paper. We have a first approach. Two countries. The externality affects the climate TFP part.

Next goals: talk to Andrés about this.

Mati: incorporate last meeting https://docs.google.com/document/d/1Tw9zAmwC4EtiMD5HdX8g6I5n63Euk8bFHcqwRX-vix0/edit?tab=t.0.


## 09/25/2024

**To Do:**
- Set up GitHub, Overleaf, and add slides.
- Meet with Andres (JMP + project logistics).
- Literature Review.

**Key Questions:**
- GE effect of an environmental externality through TFP probabilities?
- Explore TFP probabilities and their GE effects.

**Action Items:**
- Read Andres's paper.
- Brainstorm research ideas.

**Logistics:**
- Next meeting: Tue, Oct 15 (Macro-Environmental Reading Group).
- Invite papers and refine project ideas.

**Matias's Work:**
- Local impacts of natural disasters vs. climate change shocks.
- Probabilistic externalities (second project).

**Shisham’s JMP:**
- Focus: Endogenizing matching frictions, collaboration with Bushnell and Smith.
- DMP paper (paused), GSR in winter.

---

## 09/06/2024
- Develop ideas around GE and externalities, including QE chapter.

**Strengths/Weaknesses:**
- **Mati:** Strong in DSGE modeling, MATLAB, math; wants to learn Stata/model creation.
- **Shisham:** Strong in modeling and calibration; wants to improve micro-level data analysis and literature contributions.
