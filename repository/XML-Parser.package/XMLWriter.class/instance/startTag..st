writing xml
startTag: aTagName
	self writeIndent.
	self stream
		nextPut: $<;
		nextPutAll: aTagName.
	"self canonical
		ifFalse: [self stream space]."
	self openTags openTag: aTagName