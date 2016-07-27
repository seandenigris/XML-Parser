accessing
deepChildNamed: aTag do: aBlock

	self allChildrenDo: [:each |
		each tag = aTag ifTrue: [
			aBlock value: each.
			^ self ]
	]