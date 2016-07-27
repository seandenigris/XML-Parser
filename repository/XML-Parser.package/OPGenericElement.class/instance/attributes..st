accessing
attributes: anObject
	attributes := anObject.
	attributes associationsDo: [:assoc |
		attributes at: assoc key asLowercase put: assoc value ]