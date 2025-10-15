# Homebrew Formula for md2pdf
# Documentation: https://docs.brew.sh/Formula-Cookbook

class Md2pdf < Formula
  desc "Convert Markdown files with Mermaid diagrams to PDF"
  homepage "https://github.com/yourusername/md2pdf"
  url "file:///Users/christianpiconcalderon/PycharmProjects/md2pdf"
  version "1.0.0"

  # Dependencies
  depends_on "python@3"
  depends_on "node"

  # Runtime dependencies (installed via npm)
  resource "md-to-pdf" do
    url "https://registry.npmjs.org/md-to-pdf/-/md-to-pdf-5.2.4.tgz"
  end

  resource "mermaid-cli" do
    url "https://registry.npmjs.org/@mermaid-js/mermaid-cli/-/mermaid-cli-11.9.0.tgz"
  end

  def install
    # Install the binary
    bin.install "bin/md2pdf"

    # Install npm dependencies globally for this formula
    system "npm", "install", "-g", "md-to-pdf@5.2.4"
    system "npm", "install", "-g", "@mermaid-js/mermaid-cli@11.9.0"
  end

  test do
    # Test that the command exists and shows help
    system "#{bin}/md2pdf"
  end
end
