val r = (100 to 999).view
  .flatMap(i => (i to 999).map(_ * i))
  .filter(n => n.toString == n.toString.reverse)
  .max

println(r)

