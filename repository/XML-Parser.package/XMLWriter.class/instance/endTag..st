writing xml
endTag: tagName
	self outdent.
	self popTag: tagName.
	self stream
		nextPutAll: '</';
		nextPutAll: tagName.
	self endTag.
