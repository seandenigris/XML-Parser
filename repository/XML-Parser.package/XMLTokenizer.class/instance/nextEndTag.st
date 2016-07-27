tokenizing
nextEndTag
	| tagName |
	"Skip /"
	self next.
	tagName := self nextName.
	self skipSeparators.
	(self nextTrimmedBlanksUpTo: $>)
		ifNotEmpty: [self parseError: 'XML invalid end tag ' , tagName].
	self handleEndTag: tagName