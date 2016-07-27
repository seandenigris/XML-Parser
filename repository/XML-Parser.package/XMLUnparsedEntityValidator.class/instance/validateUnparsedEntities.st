validating
validateUnparsedEntities
	"this validatin has to be delayed until the entire DTD
	is processed so unparsed entities can be declared before
	their notations"
	self unparsedEntities valuesDo: [:each |
		(self notations includes: each ndata)
			ifFalse: [
				self
					errorUndeclaredNotation: each ndata
					inEntity: each name]]