validating
validateAttributeDefaultIn: anAttributeDictionary
	"unless the attribute is set (even just to an empty value), then it's set
	to the fixed default value, which it must match"
	(anAttributeDictionary
		at: self attribute
		ifAbsentPut: [self defaultValue]) = self defaultValue
		ifFalse: [self errorNonDefaultValue]