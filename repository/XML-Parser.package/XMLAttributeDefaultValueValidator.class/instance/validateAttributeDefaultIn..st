validating
validateAttributeDefaultIn: anAttributeDictionary
	"unless the attribute is set (even just to an empty value), then it's set
	to the default value"
	anAttributeDictionary
		at: self attribute
		ifAbsentPut: [self defaultValue]