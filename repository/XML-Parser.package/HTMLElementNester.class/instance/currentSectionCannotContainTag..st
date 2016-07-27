private
currentSectionCannotContainTag: anHtmlTagInfo
	^(anHtmlTagInfo isBodySectionOnlyTag
		and: [self hasOpenElement: 'head'])
			or: [anHtmlTagInfo isHeadSectionOnlyTag
				and: [self hasOpenElement: 'body']]