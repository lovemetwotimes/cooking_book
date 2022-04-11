chapters=$(find . -name "*.markdown")

pandoc --toc --number-section  -o przepisy.epub title.txt $chapters
ebook-convert przepisy.epub przepisy.mobi