tokenizing
nextEndTag
	| tagName |
	"Skip /"
	streamReader next.
	tagName := self nextName.
	streamReader skipSeparators.
	self expectNext: $>.
	driver handleEndTag: tagName