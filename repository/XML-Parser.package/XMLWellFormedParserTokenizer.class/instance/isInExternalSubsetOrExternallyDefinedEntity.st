testing
isInExternalSubsetOrExternallyDefinedEntity
	context isExternalSubsetContext
		ifTrue: [^ true].
	self hasActiveEntities
		ifTrue: [
			self activeEntities do: [:each |
				(each isInternalTo: driver documentURI)
					ifFalse: [^ true]]].
	^ false.