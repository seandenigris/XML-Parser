accessing
defaultCommentColor
	^ DefaultCommentColor
		ifNil: [DefaultCommentColor :=  self textColorForShoutProperty: #comment]