<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="menuTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Paddy's Cafe Menu</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/cafemenu/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                                <tr>
                                    <xsl:attribute name="vegetarian">
                                        <xsl:value-of select="boolean(./@vegetarian)" />
                                    </xsl:attribute>
                                    <td align="center">
                                        <input name="item0" type="checkbox" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="item" />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
                <div class="col-lg-4 text-center order-2">
            <form enctype="application/json" action="/post/json" method="post">
                <div class="form-group">
                    <select class="form-control" name="sec_n">
                        <option value="0">Side Dishes</option>
                        <option value="1">Breakfast</option>
                        <option value="2">Lunch</option>
                        <option value="3">Dinner</option>
                    </select>
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="item" placeholder="Item"></input>
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="price" placeholder="Price"></input>>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
    </xsl:template>
</xsl:stylesheet>