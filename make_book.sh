chapters=$(find . -name "*.markdown")

pandoc --toc -o przepisy.epub title.txt $chapters
ebook-convert przepisy.epub przepisy.mobi