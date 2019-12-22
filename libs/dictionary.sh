function dictionary.get {
  awk '/^'$2'/ { print $2 }' $1
}