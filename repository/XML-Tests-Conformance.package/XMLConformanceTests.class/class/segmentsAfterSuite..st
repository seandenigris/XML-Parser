paths
segmentsAfterSuite: aFileReference
	^ (aFileReference pathSegments copyAfter: self baseDirectory) allButFirst