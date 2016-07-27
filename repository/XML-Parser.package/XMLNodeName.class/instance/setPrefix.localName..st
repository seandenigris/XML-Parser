private
setPrefix: aPrefix localName: aLocalName
	aPrefix isEmptyOrNil
		ifTrue: [
			self
				setQualifiedName: aLocalName
				prefix: nil
				localName: aLocalName]
		ifFalse: [
			self
				setQualifiedName: aPrefix, ':', aLocalName
				prefix: aPrefix
				localName: aLocalName]