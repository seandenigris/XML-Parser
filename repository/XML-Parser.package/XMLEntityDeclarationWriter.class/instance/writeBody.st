private
writeBody
	self replacement
		ifNotEmpty: [self writer writeXmlEncodedString: self replacement]
		ifEmpty: [
			self externalIDWriter write.
			self ndata
				ifNotEmpty: [
					self writer
						space;
						nextPutAll: 'NDATA';
						space;
						writeName: self ndata]]