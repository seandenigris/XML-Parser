configuration
removeLimits
	"remove all input security limits (unsafe)"

	self parserLimits removeAll.
	self externalEntityResolver removeLimits.