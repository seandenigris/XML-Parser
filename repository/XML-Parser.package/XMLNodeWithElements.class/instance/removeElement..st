accessing
removeElement: element
	"Used to purge certain elements from a document after parsing."

	^ self elements remove: element ifAbsent: []