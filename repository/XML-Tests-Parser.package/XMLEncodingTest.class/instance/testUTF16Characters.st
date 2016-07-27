tests
testUTF16Characters
	| document source decoded |

	source :=
		self stringFromValues:
			#(256
				16rD7FF
				16rE000
				16rFFFF
				16rD800 16rDC00 "first surrogate"
				16rDBFF 16rDFFF). "last surrogate"
	decoded := self stringFromValues: #(256 16rD7FF 16rE000 16rFFFF 16r10000 16r10FFFF).

	document :=
		XMLDOMParser parse:
			(self
				encodingDeclaration: 'UTF-16LE'
				withUTF16XML: (self sourceXMLWith: source)
				littleEndian: true).
	self assert: document firstElement contentString = decoded.

	document :=
		XMLDOMParser parse:
			(self
				encodingDeclaration: 'UTF-16BE'
				withUTF16XML: (self sourceXMLWith: source)
				littleEndian: false).
	self assert: document firstElement contentString = decoded.