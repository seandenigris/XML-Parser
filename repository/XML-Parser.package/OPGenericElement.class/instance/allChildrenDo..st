accessing
allChildrenDo: aBlock

	self children do: [:each |
		aBlock value: each.
		each allChildrenDo: aBlock
	]