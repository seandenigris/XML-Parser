copying
copyWithPathSegments: aCollection
	^ self copy pathSegments: (OrderedCollection newFrom: aCollection)