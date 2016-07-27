handling tokens
handleWhitespace: aString
	(self elementNester hasScopedAttributes
		and: [(self elementNester scopedAttributeAt: 'xml:space') = 'preserve'])
		ifTrue: [self saxHandler characters: aString]
		ifFalse: [self saxHandler ignorableWhitespace: aString]