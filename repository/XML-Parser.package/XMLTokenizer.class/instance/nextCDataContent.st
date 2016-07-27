tokenizing
nextCDataContent
	| cdata |
	"Skip $[ "
	self next.
	cdata := self nextUpToAll: ']]>'.
	self handleCData: cdata
