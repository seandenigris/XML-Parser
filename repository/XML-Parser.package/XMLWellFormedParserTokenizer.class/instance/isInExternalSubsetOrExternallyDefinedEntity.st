testing
isInExternalSubsetOrExternallyDefinedEntity
	"this is used to check for conditional sections and
	parameter entity refs within declarations within the
	internal subset, which are disallowed"

	context isExternalSubsetContext
		ifTrue: [^ true].
	self hasPushedBackEntities
		ifTrue: [
			self pushedBackEntities do: [:each |
				(each isInternalTo: driver documentURI)
					ifFalse: [^ true]]].
	^ false.