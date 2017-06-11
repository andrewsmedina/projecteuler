var value = 600851475143L
var factor = 3

while (factor < value) {
  if (value % factor == 0)
    value = value/factor
  else
    factor += 2
}

println(factor)