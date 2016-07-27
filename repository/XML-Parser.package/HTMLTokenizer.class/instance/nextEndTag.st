tokenizing
nextEndTag
	| tagName |

	streamReader next.
	tagName := self nextName asLowercase.
	streamReader skipSeparators.
	self expectTerminator: $>.

	driver handleEndTag: tagName.