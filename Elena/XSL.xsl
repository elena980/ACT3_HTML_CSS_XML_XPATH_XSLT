<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
		
	<html>
		<head>	
			<link rel="stylesheet" href="CSS.css"/>
			<title>Modulos Formativos</title>
						
		</head>
		<body>

		<!--nombre y telefono de la empresa-->
		<h1 title="Proinnova"><xsl:value-of select="ite/empresa"/></h1>
		<h2 title="fuera de españa +34"><xsl:value-of select="ite/telefono"/></h2>

		<!--primera tabla del requerimiento 1-->
        <table border="1">
			<caption><h4>CLAUSTRO DE PROFESORES</h4></caption>
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>
            </tr>
            <xsl:for-each select="ite/profesores/profesor">
                <tr>
                    <td><xsl:value-of select="id"/></td>
                    <td><xsl:value-of select="nombre"/></td>
                </tr>
            </xsl:for-each>
        </table>


		<!--lista del requerimiento 1-->
		<div>
			<h3>DIRECCIÓN</h3>
			<ol>
				<li><h2>Director</h2>
					<ul>
						<li>Nombre: <xsl:value-of select="ite/director/nombre"/></li>
						<li>Despacho: <xsl:value-of select="ite/director/despacho"/></li>
					</ul>
				</li>
				<li><h2>Jefe de estudios</h2>
					<ul>
						<li>Nombre: <xsl:value-of select="ite/jefe_estudios/nombre"/></li>
						<li>Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></li>
					</ul>
				</li>
			</ol>
		</div>
			<!--segunda tabla del requerimiento 1-->
			<table>
                <caption><h4>CICLOS FORMATIVOS</h4></caption>
                <thead>
                    <tr>
                        <td></td>
                       <td><a href="https://www.edix.com/es/">ASIR</a></td>
                       <td><a href="https://institutotecnologico.edix.com/desarrollo-aplicaciones-web">DAW</a></td>
                       <td><a href="https://institutotecnologico.edix.com/desarrollo-aplicaciones-multiplataforma">DAM</a></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>NOMBRE</td>
                        <td><xsl:value-of select="ite/ciclos/ciclo/nombre"/></td>  
                        <td><xsl:value-of select="ite/ciclos/ciclo[3]/nombre"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/></td>
                    </tr>
                    <tr>
                        <td>GRADO</td>
                        <td><xsl:value-of select="ite/ciclos/ciclo/grado"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[3]/grado"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[2]/grado"/></td>   
                    </tr>
                    <tr>
                        <td> AÑO DECRETO TÍTULO </td>
                        <td>2009</td>   
                        <td>2010</td>
                        <td>2010</td>
                    </tr>
                    
                </tbody>
            </table>

			<!--formulario del requerimiento 1-->
			<form action="formularioHTML.jsp" method="post">
				<fieldset><legend>INFORMACIÓN SIN COMPROMISO</legend>
					<label for="nombre">Nombre</label>
					<input id="nombre"  title="Nombre" type="text" name="nombre"/>
				
					<label for="apellidos" >Apellidos</label>
					<input id="apellidos" title="Apellidos" type="text" name="apellidos"/>
				
					<label for="edad">Edad</label>
					<input id="edad" title="Edad" type="text" name="edad"/>

					<label for="email">Email</label>
					<input id="email"  title="email" type="text" name="e-mail" />
				
					<label for="telefono">Teléfono</label>
					<input id="telefono"  title="email" type="text" name="telefono" />
			
					<label for="comunidad_autonoma">Comunidad Autónoma: </label>
					<select name="comunidad_autonoma">
						<option value="AND">Andalucía</option>
						<option value="AST">Asturias</option>
						<option value="CYL">Castilla y León</option>
						<option value="CAT">Cataluña</option>
						<option value="EXT">Extremadura</option>
						<option value="GAL">Galicia</option>
						<option value="MAD">Madrid</option>
						<option value="MAL">Malaga</option>
						<option value="MUR">Murcia</option>
						<option value="NAV">Navarra</option>
						<option value="PV">País Vasco</option>
						
					</select>
				
					<label for= "matriculacion" title="Módulo requerido">Selección de ciclo formativo</label>
			
					<input id="asir" type="checkbox" name="matriculacion" value="Asir"/>ASIR
					<input id="dam" type="checkbox" name="matriculacion" value="Dam"/>DAM
					<input id="daw" type="checkbox" name="matriculacion" value="Daw"/>DAW
				
					<label for="contacto" title="cómo nos ponemos en contacto con usted">Preferencia de contacto</label>
				
					<input id="telefono" type="radio" name="contacto" value="tlf"/> Teléfono 
					<input id="mail" type="radio" name="contacto" value="mail"/> E-mail 
				
				<input type="submit" value="Enviar datos" />
				<input type="reset" value="Limpiar formulario" />
				</fieldset>
	
			</form>

		</body>
	</html>
		
	</xsl:template>
	
</xsl:stylesheet>