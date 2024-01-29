#!/bin/bash
input_directory="./wiki/"
output_file="wikilist.html"
echo "" > "$output_file"

echo "<html>
<body>
<ul>" > "$output_file"

for folder in "$input_directory"/*; do
	if [ -d "$folder" ]; then
		folder_name=$(basename "$folder")
		echo "<li><a href=\"/wiki/$folder_name/index.html\">$folder_name</a></li>" >> "$output_file"
		cp -v ./TEMPLATE.html "$input_directory/$folder_name/index.html"
		sed -i "s/@TITLE/$folder_name/g" "$input_directory/$folder_name/index.html"
	fi
done

echo "</ul>
</body>
</html>" >> "$output_file"
