retrieving
getFromClass: aVirtualFileClass
	| sourceSelector |

	sourceSelector := aVirtualFileClass sourceSelelctorFromSegments: ($/ split: path).
	(aVirtualFileClass respondsTo: sourceSelector)
		ifFalse: [XMLFileException signal: 'Cannot retrieve ', self path].

	^ (aVirtualFileClass perform: sourceSelector) readStream.