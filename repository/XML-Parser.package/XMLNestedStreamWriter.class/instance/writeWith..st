writing
writeWith: aBlock
	| result |

	"Avoid ensure: for performance"
	result := aBlock value: self acquireStream.
	self releaseStream.
	^ result.