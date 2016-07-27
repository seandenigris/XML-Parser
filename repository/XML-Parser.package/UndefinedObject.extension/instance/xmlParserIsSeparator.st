*XML-Parser
xmlParserIsSeparator
	"hack optimization to avoid testing for nil before sending
	isSeparator in XMLParser"
	^ false