tests
testCDATASection
	| document element output escapedOutput |

	output := 'this is CDATA test content 1 < 2 & 5 > 3'.
	escapedOutput := 'this is CDATA test content 1 &lt; 2 &amp; 5 &gt; 3'.

	document := XMLDOMParser parse: self exampleCDATASectionXML.
	element := document findElementNamed: 'test-data'.
	self
		assert: element nodes size = 1;
		assert: element firstNode isStringNode;
		assert: element firstNode printString = escapedOutput.

	document :=
		(XMLDOMParser on: self exampleCDATASectionXML)
			preservesCDataNodes: true;
			parseDocument.
	element := document findElementNamed: 'test-data'.
	self
		assert: element nodes size = 1;
		assert: element firstNode isCData;
		assert: element firstNode printString = ('<![CDATA[',output,']]>').