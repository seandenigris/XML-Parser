tests
testCommentCreation
	| factory document comment |

	factory := self newFactory.
	document := factory newDocument.
	comment := document newComment: 'test'.
	self
		assert: comment class == self commentClass;
		assert: comment string = 'test'.