element nesting
preEndElements: anElementCollection
	anElementCollection do: [:each |
		(self elementNester hasOpenElements)
			ifFalse: [^ self].

		self elementNester endElement: each.
	
		each splitQualifiedNameInto: [:prefixPart :localPart |
			self saxHandler 
				endElement: each
				prefix: prefixPart
				uri: ''
				localName: localPart]].