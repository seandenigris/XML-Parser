tests
testUTF8StreamConverterNames
	#('UTF-8' 'UTF8' 'utf-8' 'utf8') do: [:each |
		self assert:
			(XMLStreamConverter newForEncoding: each) class ==
				XMLUTF8StreamConverter]