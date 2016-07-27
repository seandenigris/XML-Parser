tests
testSAXEntityHandlers
	| xml parser messages |

	xml := '<!DOCTYPE root [
		<!ENTITY % firstDeclaration "<!ENTITY first &#39; &second; &#39;>">
		%firstDeclaration;
		<!ENTITY second " replacement ">]>
	<root name="&second;">&first;</root>'.
	(parser :=SAXHandlerProxy saxHandler: (SAXHandler on: xml)) parseDocument.
	self assert:
		(parser wasSentSelectors: 
			#(startDocument
				startDTD:publicID:systemID:
				parameterEntityDeclaration:replacement:
				generalEntityDeclaration:replacement: generalEntityDeclaration:replacement:
				endDTD
				startElement:prefix:uri:localName:attributes:
				startEntity: startEntity: endEntity: endEntity: characters:
				endElement:prefix:uri:localName:
				endDocument)).
	messages := parser allSentMessagesNamed: #startEntity:.
	self
		assert: messages first arguments = #('first');
		assert: messages second arguments = #('second').
	messages := parser allSentMessagesNamed: #endEntity:.
	self
		assert: messages first arguments = #('second');
		assert: messages second arguments = #('first').