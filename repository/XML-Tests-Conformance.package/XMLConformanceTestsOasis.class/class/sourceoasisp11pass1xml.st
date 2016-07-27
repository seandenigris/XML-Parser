as yet unclassified
sourceoasisp11pass1xml
	|comSimple |
	comSimple:=String with: (Character codePoint: 39).

^'<!DOCTYPE doc
[
<!ELEMENT doc EMPTY>
<!NOTATION not1 SYSTEM "a%a&b&#0<!ELEMENT<!--<?</>?>/\''">
<!NOTATION not2 SYSTEM ', comSimple, 'a
	b"""', comSimple ,'>
<!NOTATION not3 SYSTEM "">
<!NOTATION not4 SYSTEM ''>
]>
<doc/>
'