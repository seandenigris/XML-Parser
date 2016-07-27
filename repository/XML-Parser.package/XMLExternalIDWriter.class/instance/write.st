private
write
	self publicID
		ifNotEmpty: [
			self writer
				nextPutAll: 'PUBLIC';
				space;
				writeXmlEncodedString: self publicID]
		ifEmpty: [
			self systemID ifNotEmpty: [self writer nextPutAll: 'SYSTEM']].

	self systemID ifNotEmpty: [
		self writer
			space
			writeXmlEncodedString: self systemID].