accessing
addScopedAttributes: anAttributeNameCollection from: aDictionary
	| attributes |

	attributes :=
		self hasScopedAttributes
			ifTrue: [self currentScopedAttributes copy]
			ifFalse: [Dictionary new].
	aDictionary keysAndValuesDo: [:key :value |
		(anAttributeNameCollection includes: key)
			ifTrue: [attributes at: key put: value]].

	self hasScopedAttributes
		ifTrue: [self scopedAttributes removeLast].
	self scopedAttributes addLast: attributes.