private
htmlTagInfoFor: aName
	^ HtmlTagInformation
		at: aName
		ifAbsentPut: [HTMLTagInformation named: aName]