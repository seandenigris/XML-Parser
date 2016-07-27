private
writeAttributesOn: aWriter
	"use to:do: for speed"
	1 to: collection size do: [:i | | attribute |
		attribute := collection at: i.
		aWriter
			writeAttributeName: attribute name
			value: attribute value]