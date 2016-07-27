private
writePrologue
	self writer
		cr;
		nextPutAll: '<!DOCTYPE';
		space;
		writeName: self root;
		space.

	self externalIDWriter write.