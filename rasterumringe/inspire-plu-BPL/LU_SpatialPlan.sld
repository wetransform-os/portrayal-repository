<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor 
version="1.1.0"  
xmlns="http://www.opengis.net/sld" 
xmlns:plu="http://inspire.ec.europa.eu/schemas/plu/4.0" 
xmlns:net="http://inspire.ec.europa.eu/schemas/net/4.0" 
xmlns:ogc="http://www.opengis.net/ogc"
xmlns:se="http://www.opengis.net/se" 
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:gml="http://www.opengis.net/gml/3.2" 
xmlns:sld="http://www.opengis.net/sld" 
xmlns:raster="http://www.wetransform.to/coverage"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/sldAll.xsd http://www.opengis.net/se http://schemas.opengis.net/se/1.1.0/FeatureStyle.xsd">
	<sld:NamedLayer>
		<se:Name>LU.SpatialPlan</se:Name>
		<sld:UserStyle>
			<se:Name>Planned Land Use Default Style</se:Name>
			<sld:IsDefault>1</sld:IsDefault>
	<se:FeatureTypeStyle>
	<se:Description>
    	<se:Title>Planned Land Use Default Style</se:Title>
    	<se:Abstract>This Style defines the default INSPIRE style for spatial plans. Spatial plan extents are represented by black (#000000) lines of 2 pixels.</se:Abstract> 
    </se:Description>
  	<se:FeatureTypeName>plu:SpatialPlan</se:FeatureTypeName>
  	<se:Rule>
    	<se:LineSymbolizer>
      	<se:Geometry>
        	<ogc:PropertyName>plu:extent</ogc:PropertyName>
      	</se:Geometry>
      	<se:Stroke>
        	<se:SvgParameter name="stroke">#000000</se:SvgParameter>
        	<se:SvgParameter name="stroke-width">0.2</se:SvgParameter>
      	</se:Stroke>
    	</se:LineSymbolizer>
  	</se:Rule>
 </se:FeatureTypeStyle>
 </sld:UserStyle>
</sld:NamedLayer>
	<sld:NamedLayer>
		<se:Name>bp_planRaster</se:Name>
		<sld:UserStyle>
			<se:Name>bp_planRaster</se:Name>
			<sld:IsDefault>1</sld:IsDefault>
			<se:FeatureTypeStyle>
				<se:Description>
					<se:Title>bp_planRaster</se:Title>
					<se:Abstract>Raster</se:Abstract>
				</se:Description>
				<se:FeatureTypeName>raster:Raster</se:FeatureTypeName>
				<se:Rule>
					<se:Description>
						<se:Title>Raster</se:Title>
					</se:Description>
					<se:PointSymbolizer uom="meter">
						<se:Stroke>
							<se:SvgParameter name="stroke">#000000</se:SvgParameter>
						</se:Stroke> 
					</se:PointSymbolizer>
				</se:Rule>
			</se:FeatureTypeStyle>
		</sld:UserStyle>
	</sld:NamedLayer>
</StyledLayerDescriptor>