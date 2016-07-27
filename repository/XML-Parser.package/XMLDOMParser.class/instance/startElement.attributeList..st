content
startElement: elementName attributeList: attributeList
	| newElement |
	newElement := XMLElement named: elementName attributes: attributeList.
	self incremental
		ifFalse: [self stack isEmpty
			ifFalse: [self top addElement: newElement]].
	self push: newElement