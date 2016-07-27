tests
testNewComment
	| comment |

	comment := self nodeClass new newComment: 'test'.
	self
		assert: comment isComment;
		assert: comment string = 'test'.