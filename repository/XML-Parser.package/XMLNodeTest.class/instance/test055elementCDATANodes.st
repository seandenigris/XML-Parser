tests
test055elementCDATANodes
	| element str |

	str := self markupString.
	(element := XMLElement new) addNode: (XMLCData string: str).
	self
		deny: element isEmpty;
		assert: element hasStringNodes;
		assert: element contentString = str;
		assert: (element firstNode isKindOf: XMLCData) 