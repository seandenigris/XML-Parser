validating
validateAttributeDefaultValue: aDefaultValue
	"This is overriden in subclasses to check default values, but CDATA types
	should not be validated, and ID types cannot have default values at all"