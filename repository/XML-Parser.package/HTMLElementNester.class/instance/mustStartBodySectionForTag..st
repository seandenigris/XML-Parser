private
mustStartBodySectionForTag: anHtmlTagInfo
	^ (anHtmlTagInfo isBodySectionOnlyTag
		or: [(self hasOpenElement: 'head') not])
			and: [(self hasOpenElement: 'body') not]