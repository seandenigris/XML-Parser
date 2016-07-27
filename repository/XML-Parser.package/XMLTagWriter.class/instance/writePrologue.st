private
writePrologue
	self writer
		cr;
		nextPut: $<;
		writeName: (self name ifNil: ['']).
	self
		writeXmlnsDeclarations;
		writeAttributes.