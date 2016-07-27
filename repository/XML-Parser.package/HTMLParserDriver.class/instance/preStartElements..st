element nesting
preStartElements: anElementCollection
	anElementCollection do: [:each |
		self elementNester startElement: each.

		each splitQualifiedNameInto: [:prefixPart :localPart |
			self saxHandler 
				startElement: each
				prefix: prefixPart
				uri: ''
				localName: localPart
				attributes: Dictionary new]].