tests
testXMLPrefixedAttributes
	| xml document |

	xml := '<a xml="one" xmll="two" xml:="three" xmlnss="four"></a>'.
	document := XMLDOMParser parse: xml usingNamespaces: true.

	self
		assert: (document root attributeAt: 'xml') = 'one';
		assert: (document root attributeAt: 'xmll') = 'two';
		assert: (document root attributeAt: 'xml:') = 'three';
		assert: (document root attributeAt: 'xmlnss') = 'four'.