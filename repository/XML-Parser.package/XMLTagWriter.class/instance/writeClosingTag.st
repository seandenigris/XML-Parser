private
writeClosingTag
	self writer
		nextPutAll: '</';
		writeName: self name;
		nextPut: $>