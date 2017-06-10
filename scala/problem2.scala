var result = 0
var old = 0
var last = 1

while (last < 4000000) {
  val temp = old
  old = last
  last = temp + last

  if (last % 2 == 0)
    result  += last
}

print(result)


