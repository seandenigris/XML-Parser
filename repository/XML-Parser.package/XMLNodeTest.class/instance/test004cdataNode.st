tests
test004cdataNode
	| node raw |

	node := XMLCData new.
	raw := self markupString.
	self
		assert: node isCData & node isStringNode & node isContentNode;
		assertStringNode: node equals: '' withPrintString: '<![CDATA[]]>';
		assertStringNode: (node string: raw) equals: raw withPrintString: '<![CDATA[', raw, ']]>' 