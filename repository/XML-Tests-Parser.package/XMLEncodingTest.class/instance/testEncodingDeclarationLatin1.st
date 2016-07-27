tests
testEncodingDeclarationLatin1
	| xml |

	xml := self sourceXMLWith: (String newFrom: (#(126 127 128) collect: [:each | each asCharacter])).
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self encodingDeclaration: 'UTF-8'), xml)]
		raise: XMLEncodingException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self encodingDeclaration: 'ISO-8859-1'), xml)]
		raise: XMLEncodingException.