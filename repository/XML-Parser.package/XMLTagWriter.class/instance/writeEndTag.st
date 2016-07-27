private
writeEndTag
	self writer
		nextPutAll: '</';
		writeName: self name;
		nextPut: $>