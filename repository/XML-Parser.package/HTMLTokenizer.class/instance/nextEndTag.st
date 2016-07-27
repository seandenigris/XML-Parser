tokenizing
nextEndTag
	| tagName |
	streamReader next.
	tagName := self nextName asLowercase.
	(tagName = nonHtmlElement)
		ifTrue: [
			nonHtmlElement := nil.
			context enterContent].
	streamReader skipSeparators.
	self expectTerminator: $>.
	driver handleEndTag: tagName