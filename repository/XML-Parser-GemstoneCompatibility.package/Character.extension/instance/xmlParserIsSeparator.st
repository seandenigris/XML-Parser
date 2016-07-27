*XML-Parser-GemstoneCompatibility
xmlParserIsSeparator
	| tmpValue |

	(tmpValue := self asciiValue) == 32 "space"
		ifTrue: [^ true].
	tmpValue == 10 "lf"
		ifTrue: [^ true].
	tmpValue == 9 "tab"
		ifTrue: [^ true].
	tmpValue == 13 "cr"
		ifTrue: [^ true].
	"no form feeds"
	^ false.