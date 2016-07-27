tokenizing
nextCDataContent
	| cdata |

	cdata := streamReader upToAll: ']]>'.
	self handleCData: cdata
