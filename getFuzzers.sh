
FOLDER_PATH=$(pwd)
NUMBER_FILES=$1

# cd $FOLDER_PATH

git clone https://github.com/googleprojectzero/domato.git
cd domato

python3 -h
STATUS=$?
RUNNER=python3
if [ $STATUS -eq 0 ]
then
  RUNNER=python3
else
  RUNNER=python
fi

$RUNNER generator.py --output_dir ${FOLDER_PATH}/fuzzers --no_of_files $NUMBER_FILES