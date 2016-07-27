parsing
parseValueListType
	| listParserClass |

	listParserClass :=
		(self isNotationList: type)
			ifTrue: [DTDNotationListParser]
			ifFalse: [DTDEnumerationListParser].

	^ (listParserClass on: type) parse.