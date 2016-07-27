content
characters: aString
	self topNode isElement
		ifFalse: [self startHTMLPreamble].
	super characters: aString.