This class is a DOM parser that turns potentially invalid and malformed HTML into a DOM tree. All tag and attribute names are converted to lowercase and markup is unrecognized in <script>, <style>, and <title> sections.

(When printing the resulting DOM, use canonicallyPrintOn: and canonicallyPrinted.)