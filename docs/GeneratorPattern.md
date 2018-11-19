## Style generator patterns

# How does the pattern generator work?

Patterns can be used to define stylings as described below. On each save-action on the `config.style` file the style editor updates all style configurations in a the project folder `generated`. 

# Loop pattern

A `foreach` loop can be used to generate the included text block for each row in a related csv table. The foreach paattern works like this:

		<foreach var="a" file="tables/Ad_Addresses.csv">
			${a.colname}
		</foreach>
		
* `var` : variable
* `file` : relative path to a csv file
* `${variable.colname}` will be substitued by the value of the corresponding csv table cell. The value of `colname`shoud correspond to the column given in the csv header (first line). 

To support flexible pattern placing within XML-files these alternativ can be used as well:

		<!--foreach var="a" file="tables/AD_Address.csv"-->
			<!--${a.colname}-->
		<!--/foreach-->
 
# Using loops in layer configs (`config.styles`) 

Example:
 
	Layer {
		<foreach var="a" file="tables/Ad_Addresses.csv">
			id: "AD_Address_${a.Language}"
			registry-id: "http://inspire.ec.europa.eu/layer/AD.Address"
			tags: inspire production
			Name: "AD.Address ${a.Language}"
			Title: en "Addresses", de "Addressen"
			SpatialObjectTypes: http://inspire.ec.europa.eu/schemas/ad/4.0:Address
			Styles: AD_Address
		</foreach>
	}
	
Restrictions:
* `foreach` element has to be placed as shown in the example
* nexted loops are not allowed
* substitutions can be used only inside string attributes  

# Using loops in style configs (`*.se`) 

Example:

		<!-- [...] -->
			<ogc:Filter>
				<ogc:Or>
					<!--foreach var="a" file="../tables/AD_Address.csv"-->
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>ad:position/ad:GeographicPosition/ad:specification/@xlink:href</ogc:PropertyName>
							<ogc:Literal>${a.ID}</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					<!--/foreach-->
				</ogc:Or>
			</ogc:Filter>
		<!-- [...] -->
 
* loops can be placed freely
* loops can be nested; just make sure that different variables are used on nested loops 


# Expected CSV-format

* first row defines column names
* data starts on secound line
* values are separated by `;` character

# Problem resolving

* The generator produces an error markes on the `config.style` file. Check these markers on problems. 
* You can always check the files in the `generated` folder to see what actually got generated
* You can always initiate the generator by making a change in the `config.style` file and the pressing save button. 
* currently the csv files are expected in a format
* refresh your file browser to make sure you see the latest file changes 
* open CSV file in Text-Editor to check content
* check if `error.log` file exists in project directory

# Todos & Open issues
* add attribute to support different CSV-formats
* support INSPIRE-codelists as data source additional to csv tables
* support pretty printing on generated `*.style*` files
