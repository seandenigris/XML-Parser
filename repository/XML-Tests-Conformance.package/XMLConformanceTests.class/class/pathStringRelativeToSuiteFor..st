paths
pathStringRelativeToSuiteFor: aFileReference
	^ self relativePathStringFromSegments:
		(aFileReference pathSegments copyAfter: self baseDirectory) allButFirst