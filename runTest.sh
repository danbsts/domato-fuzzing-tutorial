cd fuzzers

INDEX=1
TOTAL_FILES=$1
SLEEP_TIME=$2

((TOTAL_FILES=TOTAL_FILES+1))

while [ $INDEX -lt $TOTAL_FILES ]
do
  google-chrome $(ls | grep ".[-][0]*${INDEX}.html") &
  echo $INDEX
  sleep ${SLEEP_TIME}
  kill -KILL $(pidof chrome)
  ((INDEX++))
done
