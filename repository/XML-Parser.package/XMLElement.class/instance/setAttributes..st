initialization
setAttributes: aDictionaryOrArray
	self attributeList removeAll.
	aDictionaryOrArray isEmptyOrNil ifTrue: [^ self].
	(aDictionaryOrArray isDictionary
		ifTrue: [aDictionaryOrArray associations]
		ifFalse: [aDictionaryOrArray]) do: [:association |
			self attributeList
				addName: association key
				value: association value
				scope: self scope].