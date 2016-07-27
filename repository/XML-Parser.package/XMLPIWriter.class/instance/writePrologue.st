private
writePrologue
	self writer
		cr;
		nextPutAll: '<?';
		writeName: self target