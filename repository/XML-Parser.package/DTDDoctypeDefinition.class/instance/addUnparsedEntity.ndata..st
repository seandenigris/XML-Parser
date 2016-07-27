adding
addUnparsedEntity: aName ndata: aNotation
	self generalEntities
		at: aName
		ifAbsentPut: [
			self unparsedEntities
				at: aName
				put:
					(DTDUnparsedEntity
						name: aName
						ndata: aNotation)]