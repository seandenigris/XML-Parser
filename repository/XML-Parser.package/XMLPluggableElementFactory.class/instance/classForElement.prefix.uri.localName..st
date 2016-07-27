accessing
classForElement: aName prefix: aPrefix uri: aUri localName: aLocalName
	^ (self classForElement: aName uri: aUri)
		ifNil: [
			aPrefix isEmpty
				ifTrue: [self elementClass]
				ifFalse: [
					(self classForElement: aLocalName uri: aUri)
						ifNil: [self elementClass]]]