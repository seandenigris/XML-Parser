private
endElement: anElementName
	| prefix |

	self elementNester endElement: anElementName.

	prefix := anElementName qualifiedNamePrefix.	
	self saxHandler 
		endElement: anElementName
		prefix: prefix
		uri: ''
		localName: (anElementName qualifiedNameLocalPart: prefix)