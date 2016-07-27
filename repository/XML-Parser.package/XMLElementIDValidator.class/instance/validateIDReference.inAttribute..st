validation
validateIDReference: anId inAttribute: anAttribute
	(XMLWellFormedParserTokenizer isName: anId)
		ifFalse: [
			self
				errorInvalidID: anId
				inAttribute: anAttribute].
	self idReferences add: anId.