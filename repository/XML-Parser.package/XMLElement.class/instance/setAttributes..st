initialization
setAttributes: aDictionaryOrArray
	self attributeNodes removeAll.
	self
		from: aDictionaryOrArray
		keysAndValuesDo: [:attributeName :attributevalue |
			self attributeNodes
				addName: attributeName
				value: attributevalue].