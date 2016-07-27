as yet unclassified
canonicalVersion: aDocument
	|  aStream |
	aStream := WriteStream on: (String new: 10).
	aDocument
		canonicallyPrintOn: aStream.

	^aStream contents