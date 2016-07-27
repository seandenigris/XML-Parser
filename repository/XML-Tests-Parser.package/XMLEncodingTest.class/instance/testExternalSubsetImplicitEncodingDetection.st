tests
testExternalSubsetImplicitEncodingDetection	
	| document dtd |

	document := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.
	dtd := '<!ELEMENT test EMPTY>'.
	self
		shouldnt: [
			(SAXHandler on: document)
				externalEntityResolver:
					(DTDPluggableExternalEntityResolver externalEntities:
						(Array with: 'extern.dtd' -> (self asciiToUTF16BE: dtd)));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			(SAXHandler on: document)
				externalEntityResolver:
					(DTDPluggableExternalEntityResolver externalEntities:
						(Array with: 'extern.dtd' -> (self asciiToUTF16LE: dtd)));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLParserException.