accessing
attributeAt: aSymbolOrString ifAbsent: aBlock
	^self attributes at: aSymbolOrString asSymbol ifAbsent: aBlock