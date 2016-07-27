private
mustStartHeadSectionForTag: anHtmlTagInfo
	^ anHtmlTagInfo isHeadSectionOnlyTag 
		and: [(self hasOpenElement: 'head') not]