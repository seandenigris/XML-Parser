accessing
attributeAt: attributeNameAsSymbolOrString
	^self attributeAt: attributeNameAsSymbolOrString ifAbsent: [nil]