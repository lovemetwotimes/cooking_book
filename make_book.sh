chapters=$(find . -name "*.markdown" | sort)

pandoc --toc --number-section  -o przepisy.epub title.txt $chapters
gawk '1; ENDFILE{print "\\newpage"}' $chapters | pandoc --standalone \
    -f markdown+smart \
    --self-contained \
    --toc \
    --number-section  \
    -o przepisy.pdf  \
    --pdf-engine=xelatex 

ebook-convert przepisy.epub przepisy.mobi
