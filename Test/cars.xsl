<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="automobile" class="indent">
                    <thead>
                        <tr>
                            <th colspan="4">Concession Cars</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Model</th>
                            <th>Year</th>
                             <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/automobile/type">
                            <tr>
                                <td colspan="4">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="car">
                            <tr id="{position()}">
                                <td align="center">
                                    <input name="car0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="model" />
                                </td>
                                <td>
                                    <xsl:value-of select="year" />
                                </td>
                                <td>
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>