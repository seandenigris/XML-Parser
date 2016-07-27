paths
relativePathStringFor: aFileReference
	^ self relativePathStringFromSegments:
		(aFileReference pathSegments copyAfter: self baseDirectory)