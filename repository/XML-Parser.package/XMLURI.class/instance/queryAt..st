accessing
queryAt: aKey
	"returns an empty string if aKey is absent"
	^ self percentAndPlusDecoded: (self rawQuery at: aKey)