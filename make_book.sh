chapters=$(find . -name "*.markdown")

pandoc -o przepisy.epub title.txt $chapters