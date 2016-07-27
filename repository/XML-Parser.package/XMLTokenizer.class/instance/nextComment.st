tokenizing
nextComment
	"Skip first -"
	streamReader next.
	self expectNext: $-.
	self handleComment: (streamReader upToAll: '-->')