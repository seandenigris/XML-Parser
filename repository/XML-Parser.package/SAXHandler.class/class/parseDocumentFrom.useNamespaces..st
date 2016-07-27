instance creation
parseDocumentFrom: aStream useNamespaces: aBoolean
	|  parser |
	parser := self on: aStream.
	parser useNamespaces: aBoolean.
	parser startDocument.
	parser parseDocument.
	^parser