tokenizing - dtd
nextAttlistDeclaration
	| element attribute attributeType defaultDeclaration  |

	self
		expectNextAll: 'ATTLIST';
		skipSeparatorsReplacingParameterEntities.

	element := self nextName.
	[self skipSeparatorsReplacingParameterEntities.
	(streamReader atEnd or: [streamReader peek == $>])]
		whileFalse: [
			attribute := self nextName.
			attributeType := self nextAttributeType.
			defaultDeclaration := self nextAttributeDefaultDeclaration.
			driver
				handleAttributeDeclaration: element
				name: attribute
				type: attributeType
				default: defaultDeclaration].

	self
		skipSeparatorsReplacingParameterEntities;
		expectTerminator: $>.