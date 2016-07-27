validating
validateWith: aValidator
	| attributeDictionary |

	attributeDictionary := 
		self hasAttributes
			ifTrue: [self attributeNodes asDictionary]
			ifFalse: [Dictionary new].
	aValidator
		validateStartTag: self name
		attributes: attributeDictionary.
	"validation can change/add attribute values"
	self setAttributes: attributeDictionary.

	super validateWith: aValidator.

	aValidator validateEndTag: self name.