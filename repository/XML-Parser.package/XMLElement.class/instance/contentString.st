accessing
contentString
	| contentElements |
	contentElements := self elementsAndContents.
	^(contentElements size > 0
		and: [contentElements first isText])
		ifTrue: [contentElements first string]
		ifFalse: ['']