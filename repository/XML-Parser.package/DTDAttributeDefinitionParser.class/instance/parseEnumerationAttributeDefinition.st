private
parseEnumerationAttributeDefinition
	| attributeValidatorClass enumerationListParserClass |

	"either a '(...)' or 'NOTATION (...)' enumeration type"
	(type at: 1) == $(
		ifTrue: [
			attributeValidatorClass := XMLEnumerationAttributeValidator.
			enumerationListParserClass := DTDEnumerationListParser]
		ifFalse: [
			attributeValidatorClass := XMLNotationEnumerationAttributeValidator.
			enumerationListParserClass := DTDNotationEnumerationListParser].

	^ (attributeValidatorClass
		element: element
		attribute: attribute
		defaultValidator: defaultValidator)
			allowedValues: (enumerationListParserClass on: type) parse.