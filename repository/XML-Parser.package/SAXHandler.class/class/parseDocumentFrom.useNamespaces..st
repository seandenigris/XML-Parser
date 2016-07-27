instance creation
parseDocumentFrom: aStream useNamespaces: aBoolean
	|  parser |
	parser := self on: aStream.
	parser useNamespaces: aBoolean.
	^ parser parseDocument.