# md2pdf

Convert Markdown files with Mermaid diagrams to professional PDF documents.

## Features

- ✅ Converts Markdown to PDF with professional formatting
- ✅ Renders Mermaid diagrams as embedded images
- ✅ Supports GitHub-flavored Markdown
- ✅ Syntax highlighting for code blocks
- ✅ Configurable via `.md2pdf.json`
- ✅ High-quality diagram rendering (1400x1000px)

## Installation

### Homebrew (macOS/Linux)

```bash
# Add the Homebrew tap for md2pdf
brew tap cpicon/md2pdf

# Install md2pdf from the tap
brew install cpicon/md2pdf/md2pdf
```

This installs `md2pdf` from the Homebrew tap `cpicon/md2pdf` (formula located under `Formula/md2pdf.rb`) hosted at the repository: `https://github.com/Cpicon/homebrew-md2pdf`.

### Manual Installation

```bash
# Clone the repository
git clone https://github.com/cpicon/md2pdf.git
cd md2pdf

# Make the script executable
chmod +x bin/md2pdf

# Create symlink
sudo ln -s $(pwd)/bin/md2pdf /usr/local/bin/md2pdf
```

## Dependencies

- **Node.js**: For running npm packages
- **Python 3**: For processing markdown
- **md-to-pdf**: Converts markdown to PDF
- **mermaid-cli (mmdc)**: Renders Mermaid diagrams

Install dependencies:

```bash
npm install -g md-to-pdf @mermaid-js/mermaid-cli
```

## Usage

### Basic Usage

```bash
# Convert a markdown file to PDF
md2pdf document.md

# Specify output file
md2pdf document.md output.pdf
```

### Examples

```bash
# Convert technical documentation
md2pdf Network-Architecture-Guide.md

# Convert with custom output location
md2pdf README.md ~/Documents/readme.pdf

# Process multiple files
for file in docs/*.md; do md2pdf "$file"; done
```

## Configuration

Create a `.md2pdf.json` file in your project root for custom styling.

## How It Works

1. **Parses Markdown**: Reads your markdown file
2. **Extracts Mermaid**: Identifies ```mermaid code blocks
3. **Renders Diagrams**: Uses `mmdc` to generate PNG images
4. **Embeds as Base64**: Converts images to base64 data URIs
5. **Generates PDF**: Uses `md-to-pdf` with embedded images

## Troubleshooting

### Command not found

```bash
# Check if md2pdf is in PATH
which md2pdf

# Recreate symlink
sudo ln -sf ~/PycharmProjects/md2pdf/bin/md2pdf /usr/local/bin/md2pdf
```

### Mermaid diagrams not rendering

```bash
# Verify mermaid-cli is installed
which mmdc

# Reinstall if needed
npm install -g @mermaid-js/mermaid-cli
```

### PDF generation fails

```bash
# Verify md-to-pdf is installed
npm list -g md-to-pdf

# Reinstall if needed
npm install -g md-to-pdf
```

## License

MIT License

## Author

Christian Picon Calderon

## Version

1.0.0
