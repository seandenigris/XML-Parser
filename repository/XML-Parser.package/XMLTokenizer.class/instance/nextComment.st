tokenizing
nextComment
	"Skip first -"
	streamReader next.
	self expectNext: $-.
	driver handleComment: (streamReader upToAll: '-->')