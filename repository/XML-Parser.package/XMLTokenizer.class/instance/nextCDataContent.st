tokenizing
nextCDataContent
	| cdata |
	"Skip $[ "
	streamReader next.
	cdata := streamReader nextUpToAll: ']]>'.
	self handleCData: cdata
