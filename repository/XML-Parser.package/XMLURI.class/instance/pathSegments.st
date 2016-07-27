accessing
pathSegments
	"copy the return value before modifying it"

	self parseURIStringIfUnparsed.
	^ pathSegments.