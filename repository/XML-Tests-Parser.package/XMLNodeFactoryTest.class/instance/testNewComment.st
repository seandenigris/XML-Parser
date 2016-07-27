tests
testNewComment
	| comment |

	comment := self newFactory newComment: 'test'.
	self
		assert: comment class == self commentClass;
		assert: comment string = 'test'.