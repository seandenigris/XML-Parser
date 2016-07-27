initialization
setEncodingName: anEncodingName
	super setEncodingName: anEncodingName.
	self textConverter:
		(self class textConverterForEncoding: anEncodingName) new.