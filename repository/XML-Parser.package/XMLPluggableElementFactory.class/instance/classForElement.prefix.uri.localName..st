accessing
classForElement: aName prefix: aPrefix uri: aURI localName: aLocalName
	^ (self elementClassAtName: aName uri: aURI)
		ifNil: [
			aPrefix size > 0
				ifTrue: [
					(self elementClassAtName: aLocalName uri: aURI)
						ifNil: [self elementClass]]
				ifFalse: [self elementClass]]