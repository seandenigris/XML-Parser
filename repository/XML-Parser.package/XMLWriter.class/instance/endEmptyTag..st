writing xml
endEmptyTag: aTagName
	self openTags closeTag: aTagName.
	self stream nextPutAll: '/>'.
	self canonical
		ifFalse: [self stream space].
	self cr.