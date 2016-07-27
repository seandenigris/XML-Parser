accessing
name: aQualifiedName
	aQualifiedName
		splitQualifiedNameInto: [:prefixPart :localPart |
			self setPrefix: prefixPart localName: localPart]