tests
testEncodingDeclarationLatin1
	| xml |

	"avoid asString for portability"
	xml := self sourceXMLWith: (String withAll: (#(126 127 128) collect: [:each | each asCharacter])).
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
					self utf8BOM, (self encodingDeclaration: 'latin-1'), xml)]
		raise: XMLEncodingException.