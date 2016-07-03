sum = 0
Dir.open("./a") do |dir|
  dir.each do |name|
    next if name == "."
    next if name == ".."
    p name
    p name.class
    dota = open(name)
    cs = dota.readline
    p cs.encoding
    p cs
    p cs[0, 2]

    # 判断是否为数字
    num1 = cs[0, 1].to_i
    num2 = cs[0, 2].to_i
    num3 = cs[0, 3].to_i
    num4 = cs[0, 4].to_i
    if num4.is_a?(Numeric)
      finalNum = num4
    elsif num3.is_a?(Numeric)
      finalNum = num3
    elsif num2.is_a?(Numeric)
      finalNum = num2
    elsif num1.is_a?(Numeric)
      finalNum = num1
    end

    p finalNum
    sum = sum + finalNum
    p sum
  end
end
