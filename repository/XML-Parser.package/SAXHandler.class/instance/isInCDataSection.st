private
isInCDataSection
	^ isInCDataSection ifNil: [isInCDataSection := false]