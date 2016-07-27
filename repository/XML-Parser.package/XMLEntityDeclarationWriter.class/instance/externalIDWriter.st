accessing
externalIDWriter
	^ externalIdWriter ifNil: [externalIdWriter := XMLExternalIDWriter writer: self writer]