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
						writeName: self ndata]]