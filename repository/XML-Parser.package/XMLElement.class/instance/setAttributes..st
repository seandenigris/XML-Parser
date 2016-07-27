initialize
setAttributes: aDictionary
	self attributes removeAll.
	aDictionary keysAndValuesDo: [:attrName :attrValue | self at: attrName put: attrValue].