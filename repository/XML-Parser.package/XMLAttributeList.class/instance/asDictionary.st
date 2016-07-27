converting
asDictionary
	^ (OrderPreservingDictionary newFrom: self asNameValueAssociations) defaultValue: ''