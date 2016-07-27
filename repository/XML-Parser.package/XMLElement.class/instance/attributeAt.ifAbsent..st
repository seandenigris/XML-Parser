accessing
attributeAt: attributeNameAsSymbolOrString ifAbsent: aBlock
	^self attributes at: attributeNameAsSymbolOrString asSymbol ifAbsent: [^aBlock value]