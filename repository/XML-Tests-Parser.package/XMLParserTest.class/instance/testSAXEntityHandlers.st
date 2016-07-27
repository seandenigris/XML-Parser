tests
testSAXEntityHandlers
	| xml parser |

	xml := '<!DOCTYPE root [
		<!ENTITY first " &second; ">
		<!ENTITY second " replacement ">]>
	<root>&first;</root>'.
	(parser :=SAXHandlerProxy saxHandler: (SAXHandler on: xml)) parseDocument.
	self assert:
		#(startDocument
			startDTD:publicID:systemID:
			generalEntityDeclaration:replacement: generalEntityDeclaration:replacement:
			endDTD
			startElement:prefix:uri:localName:attributes:
			startEntity: startEntity: endEntity: endEntity: characters:
			endElement:prefix:uri:localName:
			endDocument) = parser sentHandlerSelectors.
	self assert:
		((parser sentHandlerMessages select: [:each | #(startEntity: endEntity:) includes: each selector])
			collect: [:each | each arguments first]) asArray = #('first' 'second' 'second' 'first').