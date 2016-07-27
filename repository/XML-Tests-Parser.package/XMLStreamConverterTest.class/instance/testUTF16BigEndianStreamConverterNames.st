tests
testUTF16BigEndianStreamConverterNames
	#('UTF-16' 'UTF-16-BE' 'UTF-16BE' 'UTF16' 'UTF16-BE' 'UTF16BE'
		'utf-16' 'utf-16-be' 'utf-16be' 'utf16' 'utf16-be' 'utf16be'
	) do: [:each |
		self assert:
			(XMLStreamConverter newForEncoding: each) class ==
				XMLUTF16BigEndianStreamConverter]