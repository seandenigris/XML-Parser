tokenizing
nextCDataContent
	| cdata |

	cdata := streamReader upToAll: ']]>'.
	driver handleCData: cdata
