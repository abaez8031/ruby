def my_reject(arr, &prc)
  output = []
  arr.each do |ele|
    output << ele if !prc.call(ele)
  end
  output
end

def my_one?(arr, &prc)
  count = 0
  arr.each do |ele|
    count += 1 if prc.call(ele)
  end
  count == 1
end

def hash_select(hash, &prc)
  new_hash = {}
  hash.each do |k,v|
    new_hash[k] = v if prc.call(k,v)
  end
  new_hash
end

def xor_select(arr,prc1, prc2)
  output = []
  arr.each do |ele|
    output << ele if prc1.call(ele) && !prc2.call(ele)
    output << ele if !prc1.call(ele) && prc2.call(ele)
  end
  output
end

def proc_count(val, prcs)
  count = 0
  prcs.each do |prc|
    count += 1 if prc.call(val)
  end
  count
end