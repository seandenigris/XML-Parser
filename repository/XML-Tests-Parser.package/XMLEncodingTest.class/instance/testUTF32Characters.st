tests
testUTF32Characters
	| document source decoded |

	source :=
		self stringFromValues:
			#(16r000000FE
				16r0000DCFE
				16r0010FFFF).
	decoded := self stringFromValues: #(16rFE 16rDCFE 16r10FFFF).

	document :=
		XMLDOMParser parse:
			(self
				encodingDeclaration: 'UTF-32-LE'
				withUTF32XML: (self sourceXMLWith: source)
				littleEndian: true).
	self assert: document firstElement contentString = decoded.

	document :=
		XMLDOMParser parse:
			(self
				encodingDeclaration: 'UTF-32BE'
				withUTF32XML: (self sourceXMLWith: source)
				littleEndian: false).
	self assert: document firstElement contentString = decoded.