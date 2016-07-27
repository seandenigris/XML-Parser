content
documentAttributes: attributeList
	self document
		version: (attributeList at: 'version' ifAbsent: [nil]);
		encoding: (attributeList at: 'encoding' ifAbsent: [nil])