testing
isInExternalSubsetOrExternallyDefinedEntity
	context isExternalSubsetContext
		ifTrue: [^ true].
	self hasPushedBackEntities
		ifTrue: [
			self pushedBackEntities do: [:each |
				(each isInternalTo: driver documentURI)
					ifFalse: [^ true]]].
	^ false.