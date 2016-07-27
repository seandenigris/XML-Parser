tokenizing dtd
nextInternalEntityDeclaration: aName isParameterEntity: aBoolean
	| value |

	value := self nextEntityValue.
	self skipSeparatorsReplacingParameterEntities.
	self expectNext: $>.

	aBoolean
		ifTrue: [driver handleParameterEntityDeclaration: aName replacement: value]
		ifFalse: [driver handleGeneralEntityDeclaration: aName replacement: value].