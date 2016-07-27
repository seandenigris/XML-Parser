tokenizing
nextEndTag
	| tagName |
	"Skip /"
	streamReader next.
	tagName := self nextName.
	streamReader skipSeparators.
	self expectNext: $>.
	self handleEndTag: tagName