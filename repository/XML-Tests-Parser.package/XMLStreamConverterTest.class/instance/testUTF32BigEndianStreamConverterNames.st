tests
testUTF32BigEndianStreamConverterNames
	#('UTF-32' 'UTF-32-BE' 'UTF-32BE' 'UTF32' 'UTF32-BE' 'UTF32BE'
		'utf-32' 'utf-32-be' 'utf-32be' 'utf32' 'utf32-be' 'utf32be'
	) do: [:each |
		self assert:
			(XMLStreamConverter newForEncoding: each) class ==
				XMLUTF32BigEndianStreamConverter]