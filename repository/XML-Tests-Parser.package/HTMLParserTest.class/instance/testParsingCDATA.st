tests
testParsingCDATA
	| document |

	document := HTMLParser parse: '<body><![CDATA[ignored]]></body>'.
	self deny: (document findElementNamed: 'body') hasChildren.