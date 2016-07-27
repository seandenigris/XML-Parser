writing xml
startTag: tagName
	self writeIndent.
	self stream
		nextPut: $<;
		nextPutAll: tagName.
	"self canonical
		ifFalse: [self stream space]."
	self pushTag: tagName