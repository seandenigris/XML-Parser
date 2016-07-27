tests
testNewPI
	| factory document |

	factory := self newFactory.
	(document := factory newDocument)
		nodeFactory: factory.
	self assert: document newPI class == self piClass.