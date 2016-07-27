tests
testByteStreamConverterNames
	#('ASCII' 'CP819' 'CSISOLATIN1' 'IBM819' 'ISO-8859-1' 'ISO-IR-100'
		'L1' 'LATIN-1' 'LATIN1' 'Latin-1' 'Latin1'
		'ascii' 'cp819' 'csISOLatin1' 'csisolatin1' 'ibm819'
		'iso-8859-1' 'iso-ir-100' 'l1' 'latin-1' 'latin1'
	) do: [:each |
		self assert:
			(XMLStreamConverter newForEncoding: each) class ==
				XMLByteStreamConverter]