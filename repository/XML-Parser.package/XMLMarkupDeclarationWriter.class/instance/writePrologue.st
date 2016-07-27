private
writePrologue
	self writer
		cr;
		nextPutAll: '<!';
		writeName: self declarationType;
		space;
		writeName: self name;
		space