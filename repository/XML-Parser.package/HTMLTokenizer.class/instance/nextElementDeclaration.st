tokenizing dtd
nextElementDeclaration
	| name contentModel |

	self expectNextAll: 'LEMENT'.
	self skipSeparatorsReplacingParameterEntities.
	name := self nextName.
	self skipSeparatorsReplacingParameterEntities.
	contentModel := self removeTrailingSpacesFrom: (streamReader upTo: $>).

	driver
		handleElementDeclaration: name
		contentModel: contentModel