retrieving
get
	| sourceSelector |

	sourceSelector := sourceClass sourceSelectorForPath: virtualPath.
	(sourceClass respondsTo: sourceSelector)
		ifFalse: [XMLFileException signal: 'Cannot retrieve ', virtualPath].
	^ sourceClass perform: sourceSelector.