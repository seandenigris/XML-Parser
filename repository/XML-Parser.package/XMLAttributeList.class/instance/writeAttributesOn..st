private
writeAttributesOn: aWriter
	"use to:do: for speed"
	1 to: self size do: [:i | | attribute |
		attribute := self at: i.
		aWriter
			writeAttributeName: attribute name
			value: attribute value]