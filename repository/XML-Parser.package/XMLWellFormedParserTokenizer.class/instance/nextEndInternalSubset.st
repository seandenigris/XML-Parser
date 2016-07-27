tokenizing - dtd
nextEndInternalSubset
	self hasOpenIncludeSections
		ifTrue: [^ self nextEndIncludeSection].
	self hasPushedBackEntities
		ifTrue: [self errorParameterEntityTerminatingSubset].
	super nextEndInternalSubset.