tests
testUTF32LittleEndianStreamConverterNames
	#('UTF-32-LE' 'UTF-32LE' 'UTF32-LE' 'UTF32LE'
		'utf-32-le' 'utf-32le' 'utf32-le' 'utf32le'
	) do: [:each |
		self assert:
			(XMLStreamConverter newForEncoding: each) class ==
				XMLUTF32LittleEndianStreamConverter]