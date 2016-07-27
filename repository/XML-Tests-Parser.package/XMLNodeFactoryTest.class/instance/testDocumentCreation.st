tests
testDocumentCreation
	| factory document newDocument |

	factory := self newFactory.
	document := factory newDocument.
	newDocument := document newDocument.
	self
		assert: newDocument class == self documentClass;
		assert: newDocument configuration == document configuration;
		assert: newDocument nodeFactory == factory.