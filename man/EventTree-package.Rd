\name{EventTree-package}
\alias{EventTree}
\docType{package}
\title{
Event Trees for Hazard and Risk Analysis
}
\description{
A package for constructing, calculating and displaying event trees.

}

\section{Introduction}{
	\pkg{EvetTree} provides functions for building tree structures as dataframe objects.
	Event trees are a simple arrangment of initiating event followed by a series of 
	mitigating controls. Each mitigating control has a complimentary hazard state
	corresponding to failure of the control. End nodes can be labeled as outcome events.
	Display of the tree is generated in HTML using the D3 javascript library.
}

\author{
Jacob T. Ormerod

Maintainer: Jacob T. Ormerod <jake@openreliability.org>
}
\references{
  Nicholls, David [Editor] (2005) System Reliability Toolkit  Reliability information Analysis 
  Center
  
  O'Connor, Patrick D.T. (1991) Practical Reliability Engineering  John Wiley & Sons
  
  Vesely, W.E., Goldberg, F.F., Roberts, N.H., Haasl, D.F. (1981)  Fault Tree Handbook
  U.S.  Nuclear Regulatory Commission 
  
  Vesely, W.E., Stamatelato, M., Dugan, J., Fragola, J., Minarick, J., Railsback, J. (2002)
  Fault Tree Handbook with Aerospace Applications   NASA
  
  Doelp, L.C., Lee, G.K., Linney, R.E., Ormsby R.W. (1984) Quantitative fault tree analysis: Gate-by-gate method Plant/Operations Progress
Volume 3, Issue 4 American Institute of Chemical Engineers
}

\keyword{ package }



