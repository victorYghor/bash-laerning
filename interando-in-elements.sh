array=(elemento1 elemento2 elemento3)

for elemento in "${array[@]}"
do
  # faça algo com o elemento
  echo "$elemento"
done