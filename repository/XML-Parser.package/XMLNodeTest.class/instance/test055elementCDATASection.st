tests
test055elementCDATASection
	| element str |

	str := self markupString.
	(element := XMLElement new) addNode: (XMLCData string: str).
	self
		deny: element isEmpty;
		assert: element hasContents;
		assert: element contentString = str;
		assert: (element firstNode isKindOf: XMLCData) 