tokenizing - dtd
nextAttlistDeclaration
	| element attribute attributeType defaultPragma defaultValue  |

	self
		expectNextAll: 'ATTLIST';
		skipSeparatorsReplacingParameterEntities.

	element := self nextName.
	[self skipSeparatorsReplacingParameterEntities.
	(streamReader atEnd or: [streamReader peek == $>])]
		whileFalse: [
			attribute := self nextName.
			attributeType := self nextAttributeType.
			defaultPragma := self nextAttributeDefaultPragma.
			defaultValue := self nextAttributeDefaultValueForPragma: defaultPragma.
			driver
				handleAttributeDeclaration: element
				name: attribute
				type: attributeType
				defaultPragma: defaultPragma
				defaultValue: defaultValue].

	self
		skipSeparatorsReplacingParameterEntities;
		expectTerminator: $>.