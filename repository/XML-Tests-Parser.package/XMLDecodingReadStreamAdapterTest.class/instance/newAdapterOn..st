instance creation
newAdapterOn: aStream
	^ (super newAdapterOn: aStream)
		streamConverter: self streamConverterClass new