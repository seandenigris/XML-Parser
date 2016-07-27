private
setPrefix: aPrefix localPart: aLocalPart
	aPrefix isEmptyOrNil
		ifTrue: [
			self
				setQualified: aLocalPart
				prefix: ''
				localPart: aLocalPart]
		ifFalse: [
			self
				setQualified: aPrefix, ':', aLocalPart
				prefix: aPrefix
				localPart: aLocalPart]