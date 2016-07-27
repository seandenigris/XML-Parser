accessing
document: aDocument
	document := aDocument.

	self hasElements
		ifTrue: [self elementsDo: [:each | each document: aDocument]]