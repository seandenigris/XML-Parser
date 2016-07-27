accessing
allChildren

	| all |
	all := OrderedCollection new.
	self allChildrenDo: [:each | all addLast: each].
	^all