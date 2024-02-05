#!/bin/bash

input_directory="./wiki"
output_file="wikilist.html"

generate_list()
{
	local current_directory="$1"
	local current_output_file="$2"

	echo "<ul>" >> "$current_output_file"

	for item in "$current_directory"/*; do
		if [ -d "$item" ]; then
			item_name=$(basename "$item")
			echo "<li><a href=\"$current_directory/$item_name/index.html\">$item_name</a>" >> "$current_output_file"
			generate_list "$current_directory/$item_name" "$current_output_file"

			echo "</li>" >> "$current_output_file"
		fi
	done

	echo "</ul>" >> "$current_output_file"
}

echo "" > "$output_file"
echo "<html>
<body>
<ul>" > "$output_file"

generate_list "$input_directory" "$output_file"
echo "</ul>
</body>
</html>" >> "$output_file"
