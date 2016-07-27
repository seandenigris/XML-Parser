accessing
pathSegments
	^ self rawPathSegments collect: [:each | self percentDecoded: each]