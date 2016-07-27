accessing
prefix: aPrefix
	self changeWith: [
		aPrefix isEmptyOrNil
			ifTrue: [
				self
					setQualified: self localPart
					prefix: ''
					localPart: self localPart]
			ifFalse: [
				self
					setQualified: aPrefix, ':', self localPart
					prefix: aPrefix
					localPart: self localPart]]