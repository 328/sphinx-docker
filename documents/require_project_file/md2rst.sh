MD_DIR='source/markdown/'
RST_DIR='source/rst/'
FILES='*.md'
cd $MD_DIR
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.rst"
  pandoc ../../$MD_DIR$f -t rst -o ../../$RST_DIR$filename.rst
done
