parsing
parseValueListTypeFor: anAttributeValidator
	| listParserClass isNotationList |

	isNotationList := self isNotationList: type.
	listParserClass :=
		isNotationList
			ifTrue: [DTDNotationListParser]
			ifFalse: [DTDEnumerationListParser].

	anAttributeValidator allowedValues: (listParserClass on: type) parse.