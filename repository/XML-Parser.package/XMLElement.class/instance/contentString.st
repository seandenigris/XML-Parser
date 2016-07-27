accessing
contentString
	| contentElements |
	contentElements := self elementsAndContents.
	^(contentElements size == 1
		and: [contentElements first isText])
		ifTrue: [contentElements first string]
		ifFalse: ['']