accessing
valueAt: aName put: aValue
	(self includesName: aName)
		ifTrue: [(self nodeNamed: aName) value: aValue]
		ifFalse: [
			self addNode:
				(XMLAttribute
					name: aName
					value: aValue
					scope: self scope)].
	^ aValue.