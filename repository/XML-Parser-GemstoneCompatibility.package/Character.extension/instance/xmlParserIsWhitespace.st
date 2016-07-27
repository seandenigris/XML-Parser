*XML-Parser-GemstoneCompatibility
xmlParserIsWhitespace
	| tmpValue |

	(tmpValue := self asciiValue) == 32 "space"
		ifTrue: [^ true].
	tmpValue == 10 "lf"
		ifTrue: [^ true].
	tmpValue == 9 "tab"
		ifTrue: [^ true].
	tmpValue == 13 "cr"
		ifTrue: [^ true].
	tmpValue == 12 "form feed"
		ifTrue: [^ true].
	^ false.