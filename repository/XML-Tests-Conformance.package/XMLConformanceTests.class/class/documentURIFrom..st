paths
documentURIFrom: aFileReference
	^ ($/ join: (self segmentsAfterSuite: aFileReference)) asString