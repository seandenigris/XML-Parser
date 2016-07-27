xml source
sourcevalidpe02xml
	"Source file: sun/valid/pe02.xml"

	^ '<?xml version=''1.0''?>
<!DOCTYPE test [
<!ELEMENT test (#PCDATA) >
<!ENTITY % xx ''&#37;zz;''>
<!ENTITY % zz ''&#60;!ENTITY tricky "error-prone" >'' >
%xx;
]>
<test>This sample shows a &tricky; method.</test>
<!-- Example 2 from XML spec 1.0 Appendix D -->
'