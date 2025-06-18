#!/usr/bin/zsh


# Directory to search, defaults to the current directory if not provided
SEARCH_DIR="${1:-.}"
API_URL='http://192.168.8.125:3180/api/v1/convert/file/pdf'

# Function to identify pptx files and convert them to pdf
convert_pptx_to_pdf() {
    echo "Searching for .pptx files in directory: $SEARCH_DIR"

    # Find all .pptx files
    find "$SEARCH_DIR" -type f -name "*.pptx" | while read -r pptx_file; do
        echo "Found .pptx: $pptx_file"
        
        # Generate the corresponding .pdf filename
        pdf_file="${pptx_file%.pptx}.pdf"

        # Check if the PDF already exists
        if [[ -f "$pdf_file" ]]; then
            echo "PDF already exists for: $pptx_file. Skipping conversion."
            continue
        fi

        # Send the .pptx file to the API for conversion and save the output PDF
        response=$(curl -s -X 'POST' "$API_URL" \
            -H 'accept: */*' \
            -H 'Content-Type: multipart/form-data' \
            -F "fileInput=@$pptx_file" \
            --output "$pdf_file")

        # Check for successful conversion (you might need to adjust the success condition)
        if [[ -f "$pdf_file" ]]; then
            echo "Successfully converted $pptx_file to PDF and saved as $pdf_file."
        else
            echo "Failed to convert $pptx_file. Response: $response"
        fi
    done
}

# Call the function
convert_pptx_to_pdf
