paths
trimRelativePath: aPath
	^ (aPath beginsWith: (String with: $. with: self pathSeparator))
		ifTrue: [aPath allButFirst: 2]
		ifFalse: [aPath]