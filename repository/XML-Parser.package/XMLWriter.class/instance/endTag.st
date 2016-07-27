writing xml
endTag
	self stream nextPutAll: '>'.
	self cr.
	self indent.
	"self canonical
		ifFalse: [self stream space]"