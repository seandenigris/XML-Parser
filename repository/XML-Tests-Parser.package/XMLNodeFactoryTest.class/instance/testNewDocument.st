tests
testNewDocument
	| factory document newDocument |

	factory := self newFactory.
	(document := factory newDocument)
		nodeFactory: factory.
	newDocument := document newDocument.
	self
		assert: newDocument class == self documentClass;
		assert: newDocument configuration == document configuration;
		assert: newDocument nodeFactory == factory.