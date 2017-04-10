# Package Definitions

* **abc2.1** = Implements several ABC algorithms for performing parameter estimation, model selection, and goodness-of-fit. Cross-validation tools are also available for measuring the accuracy of ABC estimates, and to calculate the misclassification probabilities of different models.
(Tool for approximate Bayesian Computation)

* **adespatial** - https://cran.r-project.org/web/packages/adespatial/adespatial.pdf
Multivariate Multiscale Spatial analyiss - Tools for the multiscale spatial analysis of multivariate data. Several methods are based on the use of a spatial weighting matrix and its eigenvector decomposition (Moran's Eigenvectors Maps, MEM).

* **BDgraph** - Bayesian Structure Learning in Graphical Models using Birth-Death MCMC

* **bnlearn** - an R package for learning the graphical structure of Bayesian networks, estimate their parameters and perform some useful inference.

* **bnspatial** - https://cran.r-project.org/web/packages/bnspatial/vignettes/bnspatial.html
Spatial Implementation of Bayesian Networks and Mapping - Package for the spatial implementation of Bayesian Networks and mapping in geographical space. It makes maps of expected value (or most likely state) given known and unknown conditions, maps of uncertainty measured as coefficient of variation or Shannon index (entropy), maps of probability associated to any states of any node of the network. Some additional features are provided as well: parallel processing options, data discretization routines and function wrappers designed for users with minimal knowledge of the R language. Outputs can be exported to any common GIS format.

* **CompRandFld** - Composite-Likelihood Based Analysis of Random Fields
A set of procedures for the analysis of Random Fields using likelihood and non-standard likelihood methods is provided. Spatial analysis often involves dealing with large dataset. Therefore even simple studies may be too computationally demanding. Composite likelihood inference is emerging as a useful tool for mitigating such computational problems. This methodology shows satisfactory results when compared with other techniques such as the tapering method.

* **CRF** - https://cran.r-project.org/web/packages/CRF/CRF.pdf
Conditional Random Fields - Implements modeling and computational tools for conditional random fields (CRF) model as well as other probabilistic undirected graphical models of discrete data with pairwise and unary potentials.

* **deal** - Learning Bayesian Networks with Mixed Variables
Bayesian networks with continuous and/or discrete variables can be learned and compared from data.(https://cran.r-project.org/web/packages/deal/deal.pdf)

* **depmix** - Dependent Mixture Models
Fits (multigroup) mixtures of latent or hidden Markov models on mixed categorical and continuous (timeseries) data. The Rdonlp2 package can optionally be used for optimization of the log-likelihood and is available from R-forge. 

* **depmixS4** - Dependent Mixture Models - Hidden Markov Models of GLMs and Other Distributions in S4
Fits latent (hidden) Markov models on mixed categorical and continuous (time series) data, otherwise known as dependent mixture models.(https://cran.r-project.org/web/packages/depmixS4/depmixS4.pdf)

* **ebdbNet** - Empirical Bayes Estimation of Dynamic Bayesian Networks
Infer the adjacency matrix of a network from time course data using an empirical Bayes estimation procedure based on Dynamic Bayesian Networks.(https://cran.r-project.org/web/packages/ebdbNet/ebdbNet.pdf)

* **equSA** - Estimate Directed and Undirected Graphical Models and Construct Networks
Provides an equivalent measure of partial correlation coefficients for high-dimensional Gaussian Graphical Models to learn and visualize the underlying relationships between variables from single or multiple datasets.
(https://cran.r-project.org/web/packages/equSA/equSA.pdf)

* **excursions** - Excursion Sets and Contour Credibility Regions for Random Fields
Functions that compute probabilistic excursion sets, contour credibility regions, contour avoiding regions, and simultaneous confidence bands for latent Gaussian random processes and fields. The package also contains functions that calculate these quantities for models estimated with the INLA package.
(https://cran.r-project.org/web/packages/excursions/excursions.pdf)

* **ggm** - Functions for graphical Markov models
Functions and datasets for maximum likelihood fitting of some classes of graphical Markov models.

* **GiRaF** - Gibbs Random Fields Analysis
Allows calculation on, and sampling from Gibbs Random Fields, and more precisely general homogeneous Potts model. The primary tool is the exact computation of the intractable normalising constant for small rectangular lattices. Beside the latter function, it contains method that give exact sample from the likelihood for small enough rectangular lattices or approximate sample from the likelihood using MCMC samplers for large lattices.
(https://cran.r-project.org/web/packages/GiRaF/GiRaF.pdf)

* **qpgraph** - q-order partial correlation graphs, or qp-graphs for short, are undirected Gaussian graphical Markov models that represent q-order partial correlations. They are useful for learning undirected graphical Gaussian Markov models from data sets where the number of random variables p exceeds the available sample size n as, for instance, in the case of microarray data where they can be employed to reverse engineer a molecular regulatory network. 

* **HMM** - Easy to use library to setup, apply and make inference with discrete time and discrete space Hidden Markov Models.  
(https://cran.r-project.org/web/packages/HMM/HMM.pdf)
	* Issues: Does not do structure learning. HMM's are too simple as they depend only on the previous state in time

* **hmm-discnp** - Hidden Markov Models with Discrete Non-Parametric Observation Distributions
Fits hidden Markov models with discrete non-parametric observation distributions to data sets. Simulates data from such models. Finds most probable underlying hidden
states, the most probable sequences of such states, and the log likelihood of a collection of observations given the parameters of the model.
(https://cran.r-project.org/web/packages/hmm.discnp/hmm.discnp.pdf)
	* Issues: Does not do structure learning. HMM's are too simple as they depend only on the previous state in time

* **HMMCont** - Extension of HMM package. 
(https://cran.r-project.org/web/packages/HMMCont/HMMCont.pdf)
	* Issues: Does not do structure learning. HMM's are too simple as they depend only on the previous state in time

* **hmmm** - Functions for specifying and fitting marginal models for contingency tables called hierarchical multinomial marginal models
(hmmm) and their extensions; multinomial Poisson homogeneous (mph) models and homogeneous linear predictor  (hlp) models for contingency
tables; hidden Markov models where the distribution of the observed variables is described by a marginal model.
Inequality constraints on the parameters are allowed and can be tested.
(https://cran.r-project.org/web/packages/hmmm/hmmm.pdf)
	* Issues: appears to be too simple (models are not general enough). Does not actually deal with conditional or markov random fields. 

* **hybridModels** - Simulates stochastic hybrid models for transmission of infectious diseases in dynamic networks.
(https://cran.r-project.org/web/packages/hybridModels/hybridModels.pdf)
	* Issues: Too domain specific to be useful. 

* **HydeNet** - Facilities for easy implementation of hybrid Bayesian networks using R.
(https://cran.r-project.org/web/packages/HydeNet/HydeNet.pdf)
	* Issues: Deals mostly with decision networks and dynamic Bayesian networks. Difficult to determine if it does structure learning. 
	
* **interventionalDBN** - This package allows a dynamic Bayesian network to be inferred from microarray timecourse data with interventions (inhibitors).
(https://cran.r-project.org/web/packages/interventionalDBN/interventionalDBN.pdf)
	* Issues: Too domain specific (what is an intervention?)

* **LatticeKrig** - Methods for the interpolation of large spatial datasets. 
(https://cran.r-project.org/web/packages/LatticeKrig/LatticeKrig.pdf)
	* Issues: Not helpful at all. Dataset generator. 

* **markovchain** - Functions and S4 methods to create and manage discrete time Markov chains more easily.
(https://cran.r-project.org/web/packages/markovchain/markovchain.pdf)
	* Issues: Deals with Markov chains, and Markov chains are too simple. 

* **msm** - Functions for fitting continuous-time Markov and hidden Markov multi-state models to longitudinal data
(https://cran.r-project.org/web/packages/msm/msm.pdf)
	* Issues: Markov models and hidden markov models not complex enough. 
	
* **RandomFields** - Methods for the inference on and the simulation of Gaussian fields are provided, as well as methods for the simulation of extreme value random fields.
(https://cran.r-project.org/web/packages/RandomFields/RandomFields.pdf)
	* Issues: Does not do structure learning. 

* **RandomFieldsUtils** - Various utilities are provided that might be used in spatial statistics and elsewhere. 
(https://cran.r-project.org/web/packages/RandomFieldsUtils/RandomFieldsUtils.pdf)
	* Issues: Does not deal with probabilistic graphical models at all. 

* **SpatioTemporal** - Utilities that estimate, predict and cross-validate the spatio-temporal model. 
(https://cran.r-project.org/web/packages/SpatioTemporal/SpatioTemporal.pdf)
	* Issues: Does not do structure learning. 

* **spTimer** - Fits, spatially predicts and temporally forecasts large amounts of space-time data using Bayesian Gaussian Process (GP) Models, Bayesian Auto-Regressive (AR) Models,
and Bayesian Gaussian Predictive Processes (GPP) based AR Models for spatiotemporal big-n problems
(https://cran.r-project.org/web/packages/spTimer/spTimer.pdf)
	* Issues: Mostly deals with Bayesian models. May still be helpful. 
	
# Markov Related Stuff
* http://blog.revolutionanalytics.com/2016/01/getting-started-with-markov-chains.html
* http://www.bodowinter.com/tutorial/bw_doodling_markov.pdf
* https://www.r-bloggers.com/is-deep-learning-a-markov-chain-in-disguise/
* http://www.moneyscience.com/pg/blog/StatAlgo/read/635759/reinforcement-learning-in-r-markov-decision-process-mdp-and-value-iteration 



