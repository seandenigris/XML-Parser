accessing
localPart: aLocalPart
	self changeWith: [self setPrefix: self prefix localPart: aLocalPart]