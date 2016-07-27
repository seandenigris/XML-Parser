initialization
setAttributes: aDictionary
	self attributeList removeNodes.
	aDictionary isEmptyOrNil ifTrue: [^ self].
	aDictionary keysAndValuesDo: [:key :value |
		self attributeList
			addNode:
				(XMLAttribute
					name: key
					value: value
					scope: self scope)].