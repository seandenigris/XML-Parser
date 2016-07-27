tests
testUTF16LittleEndianStreamConverterNames
	#('UTF-16-LE' 'UTF-16LE' 'UTF16-LE' 'UTF16LE'
		'utf-16-le' 'utf-16le' 'utf16-le' 'utf16le'
	) do: [:each |
		self assert:
			(XMLStreamConverter newForEncoding: each) class ==
				XMLUTF16LittleEndianStreamConverter]