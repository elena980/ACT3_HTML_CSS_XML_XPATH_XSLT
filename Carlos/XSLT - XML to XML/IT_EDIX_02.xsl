<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    <ite>
        <nombre><xsl:value-of select="ite/@nombre"/></nombre>
        <web><xsl:value-of select="ite/@web"/></web>
        <compania><xsl:value-of select="ite/empresa"/></compania>
        <telefono><xsl:value-of select="ite/telefono"/></telefono>
        <docentes>
            <xsl:for-each select="ite/profesores/profesor">
            <docente>
                    <xsl:attribute name="id">
                        <xsl:value-of select="id"/>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="nombre"/></nombre>      
            </docente>
            </xsl:for-each>
        </docentes>
        <cargos_directivos>
            <director>
            <nombre>
                <xsl:attribute name="cargo">Director</xsl:attribute>
                <xsl:value-of select="ite/director/nombre"/>
            </nombre>
            <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
            </director>
            <jefe_estudios>
            <nombre>
                <xsl:attribute name="cargo">Jefe de Estudios</xsl:attribute>
                <xsl:value-of select="ite/jefe_estudios/nombre"/>
            </nombre>
            <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
            </jefe_estudios>
        </cargos_directivos>
        <modulos>
            <xsl:for-each select="ite/ciclos/ciclo">
                <modulo>
                        <xsl:attribute name="grado"><xsl:value-of select="grado"/></xsl:attribute>
                        <xsl:attribute name="año"><xsl:value-of select="decretoTitulo/@anio"/></xsl:attribute>    
                        <id><xsl:value-of select="@id"/></id>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                </modulo>
            </xsl:for-each>
        </modulos>
    </ite>

    </xsl:template>
</xsl:stylesheet>