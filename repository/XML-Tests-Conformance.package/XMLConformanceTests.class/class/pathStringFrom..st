paths
pathStringFrom: aFileReference
	^ ($/ join: (aFileReference pathSegments copyAfter: self baseDirectory)) asString