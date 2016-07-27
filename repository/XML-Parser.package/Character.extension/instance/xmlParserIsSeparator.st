*XML-Parser
xmlParserIsSeparator
	"Overridden in Gemstone version"
	value = 32 "space"
		ifTrue: [^ true].
	value = 10 "lf"
		ifTrue: [^ true].
	value = 9 "tab"
		ifTrue: [^ true].
	value = 13 "cr"
		ifTrue: [^ true].
	"no form feeds"
	^ false.