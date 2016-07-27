tests
testAsXMLEscapedString
	| node |

	node := self nodeClass string: self markupString.
	self	
		assert: node string = self markupString;
		deny: node string = self escapedString;
		assert: node asXMLEscapedString = self escapedString.