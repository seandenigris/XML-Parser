tokenizing - dtd
nextEndInternalSubset
	self hasOpenIncludeSections
		ifTrue: [^ self nextEndIncludeSection].
	self hasActiveEntities
		ifTrue: [self errorParameterEntityTerminatingSubset].
	super nextEndInternalSubset.