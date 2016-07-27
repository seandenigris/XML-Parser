accessing
httpClient
	^ httpClient ifNil: [httpClient := XMLHTTPClient defaultImplementation new]