accessing
document: aDocument
	document := aDocument.

	self hasChildren
		ifTrue: [self elementsDo: [:each | each document: aDocument]]