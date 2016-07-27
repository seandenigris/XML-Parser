tokenizing
nextComment
	| comment |
	"Skip first -"
	streamReader next.
	self expectNext: $-.
	comment := streamReader upToAll: '--'.
	self expectNext: $>.
	driver handleComment: comment.