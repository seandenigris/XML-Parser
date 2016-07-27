tests
testUTF8Characters
	| document source decoded |

	source :=
		self stringFromValues:
			#(16r7F
				16rC2 16r80
				16rDF 16rBF
				16rE0 16rA0 16r80
				16rEF 16rBF 16rBF
				16rF0 16r90 16r80 16r80
				16rF4 16r8F 16rBF 16rBF).
	decoded := self stringFromValues: #(16r7F 16r80 16r7FF 16r800 16rFFFF 16r10000 16r10FFFF).

	document :=
		XMLDOMParser parse:
			self utf8BOM, (self encodingDeclaration: 'UTF-8'), (self sourceXMLWith: source).
	self assert: document firstElement contentString = decoded.