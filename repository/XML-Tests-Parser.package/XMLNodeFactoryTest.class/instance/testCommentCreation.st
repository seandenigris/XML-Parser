tests
testCommentCreation
	| factory document comment |

	factory := self newFactory.
	(document := factory newDocument)
		nodeFactory: factory.
	comment := document newComment: 'test'.
	self
		assert: comment class == self commentClass;
		assert: comment string = 'test'.