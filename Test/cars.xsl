<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
<html>
<head><title>Cars</title>
</head>
<body>
<table width="100%" border="1">
  <THEAD>
           <TR>
                <TD width="35%"><B>Model</B></TD>
                <TD width="15%"><B>Year</B></TD>
                <TD width="15%"><B>Price</B></TD>
         
          </TR>
   </THEAD> 
  <TBODY>
             <xsl:for-each select="cars/car">
             <TR> 
                  <TD width="35%"><xsl:value-of select="model" /></TD>   
                  <TD width="15%"><xsl:value-of select="year" /></TD> 
                  <TD width="10%"><xsl:value-of select="price" /></TD>
                  
            </TR>
            </xsl:for-each>
  </TBODY>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

