accessing
classForElement: aName prefix: aPrefix uri: aUri localName: aLocalName
	^ (self classForElement: aName uri: aUri)
		ifNil: [
			aPrefix
				ifEmpty: [self elementClass]
				ifNotEmpty: [
					(self classForElement: aLocalName uri: aUri)
						ifNil: [self elementClass]]]