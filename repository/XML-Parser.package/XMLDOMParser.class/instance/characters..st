content
characters: aString
	| newElement |
	newElement := XMLStringNode string: aString.
	self top addContent: newElement.
