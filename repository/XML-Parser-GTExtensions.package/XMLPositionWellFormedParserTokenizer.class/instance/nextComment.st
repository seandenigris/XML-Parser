tokenizing
nextComment
	driver handleStartCommentPosition: self currentPosition - 2.
	super nextComment.
	driver handleEndCommentPosition: self currentPosition - 1.