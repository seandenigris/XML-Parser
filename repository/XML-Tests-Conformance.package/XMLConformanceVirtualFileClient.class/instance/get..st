retrieving
get: aPath
	| segments sourceSelector |

	segments := self pathSeparator split: aPath.
	sourceSelector := XMLConformanceTests sourceSelelctorFromSegments: segments.
	(testCaseClass respondsTo: sourceSelector)
		ifFalse: [XMLFileIOException signal: 'Cannot retrieve ', aPath].

	^ (testCaseClass perform: sourceSelector) readStream.