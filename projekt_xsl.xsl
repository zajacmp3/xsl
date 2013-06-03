<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  
	<xsl:variable name="bodyTextSize">10pt</xsl:variable>
	
	<xsl:attribute-set name="atrybuty">
		<xsl:attribute name="style">color:green;background-color:white;
									font-size:20pt
		</xsl:attribute>
		<xsl:attribute name="height">100</xsl:attribute>
		<xsl:attribute name="width">100</xsl:attribute>
		<xsl:attribute name="align">center</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:template match="/">
		<html>
			<body>
				<table xsl:use-attribute-sets="atrybuty">
					<xsl:for-each select="osoby/grupaStudentow/student">
						<xsl:sort select="wiek" data-type="number"/>
						<xsl:if test="position() &lt; 4">
							<xsl:choose>
								<xsl:when test="@plec='m'">
									imie:<xsl:value-of select="imie"/> nazwisko:<xsl:value-of select="nazwisko"/>
								</xsl:when>
							</xsl:choose>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
  
</xsl:stylesheet>
