<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="xml" indent="yes" />
	<xsl:template match="/student">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4-portrait"
					page-height="29.7cm" page-width="21.0cm" margin="2cm">
					<fo:region-body />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="A4-portrait">
				<fo:flow flow-name="xsl-region-body">
					<fo:table background-color="red">
							<fo:table-header>
								<fo:table-row>
									<fo:table-cell border="solid black 1px">
										<fo:block font-weight="bold">First Name</fo:block>
									</fo:table-cell>
									<fo:table-cell border="solid black 1px">
										<fo:block font-weight="bold">Last Name</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border="solid black 1px">
										<fo:block>
											<xsl:value-of select="fname" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="solid black 1px">
										<fo:block>
											<xsl:value-of select="lname" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
					</fo:table>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>