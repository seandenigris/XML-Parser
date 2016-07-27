private
mutuallyExcludingTags
	| mutuallyExcludingTags |

	mutuallyExcludingTags := Dictionary new.
	#(#('dd' 'dt') #('thead' 'tbody') #('th' 'td') #('rp' 'rt'))
		do: [:tagList |
			tagList do: [:tag |
				tagList do: [:each |
					(each = tag)
						ifFalse: [mutuallyExcludingTags at: each put: tag]]]].
	^ mutuallyExcludingTags.