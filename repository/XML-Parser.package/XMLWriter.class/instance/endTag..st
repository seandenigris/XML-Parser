writing xml
endTag: aTagName
	self outdent.
	self openTags closeTag: aTagName.
	self stream
		nextPutAll: '</';
		nextPutAll: aTagName.
	self endTag.
