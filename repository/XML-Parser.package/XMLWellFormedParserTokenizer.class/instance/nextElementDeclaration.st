tokenizing - dtd
nextElementDeclaration
	| name contentModel |

	self
		expectNextAll: 'LEMENT';
		skipSeparatorsReplacingParameterEntities.
	name := self nextName.
	contentModel := self nextContentModel.
	self
		skipSeparatorsReplacingParameterEntities;
		expectTerminator.

	driver
		handleElementDeclaration: name
		contentModel: contentModel.