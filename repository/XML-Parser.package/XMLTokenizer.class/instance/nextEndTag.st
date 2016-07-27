tokenizing
nextEndTag
	| tagName |
	"Skip /"
	streamReader next.
	tagName := self nextName.
	streamReader skipSeparators.
	(streamReader nextTrimmedBlanksUpTo: $>)
		ifNotEmpty: [self parseError: 'XML invalid end tag ' , tagName].
	self handleEndTag: tagName