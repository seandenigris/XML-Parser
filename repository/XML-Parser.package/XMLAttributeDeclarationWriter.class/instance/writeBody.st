private
writeBody
	self writer
		writeName: self attributeName;
		space;
		writeName: self type.

	self defaultDeclaration
		ifNotEmpty: [
			self writer
				space;
				nextPutAll: self defaultDeclaration]