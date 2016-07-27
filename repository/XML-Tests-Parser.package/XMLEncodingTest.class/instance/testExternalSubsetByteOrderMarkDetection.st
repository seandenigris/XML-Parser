tests
testExternalSubsetByteOrderMarkDetection
	| document dtd encodedDTDWithBOM |

	document := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.
	dtd := '<!ELEMENT test EMPTY>'.
	self
		shouldnt: [
			encodedDTDWithBOM := self utf16BigEndianBOM, (self asciiToUTF16BE: dtd).
			(SAXHandler on: document)
				externalEntityResolver:
					(DTDPluggableExternalEntityResolver entities:
						(Array with: 'extern.dtd' -> encodedDTDWithBOM));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			encodedDTDWithBOM := self utf16LittleEndianBOM, (self asciiToUTF16LE: dtd).
			(SAXHandler on: document)
				externalEntityResolver:
					(DTDPluggableExternalEntityResolver entities:
						(Array with: 'extern.dtd' -> encodedDTDWithBOM));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLParserException.