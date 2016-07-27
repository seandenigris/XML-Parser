private
writeSortedAttributesOn: aWriter
	| sortedAttributes |

	sortedAttributes := self sorted.
	"use to:do: for speed"
	1 to: self size do: [:i | | attribute |
		attribute := sortedAttributes at: i.
		aWriter
			writeAttributeName: attribute name
			value: attribute value]