handling
handleWhitespace: aString
	self elementNester isInElement
		ifFalse: [^ self].

	self isValidating
		ifTrue: [
			self validator hasElementContent
				ifTrue: [
					(self elementNester hasScopedAttributes
						and: [(self elementNester scopedAttributeAt: 'xml:space') = 'preserve'])
						ifTrue: [self saxHandler characters: aString]
						ifFalse: [self saxHandler ignorableWhitespace: aString].
					^ self].
			self validator validatePCData: aString].
	self saxHandler characters: aString.