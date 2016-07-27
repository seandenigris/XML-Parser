private
parseAfterList
	(valueListStream atEnd
		or: [valueListStream next == $*
			and: [valueListStream atEnd]])
		ifFalse: [self errorInvalidMixedContentList].