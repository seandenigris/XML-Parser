testing
isInCDataSection
	^ isInCDataSection ifNil: [isInCDataSection := false]