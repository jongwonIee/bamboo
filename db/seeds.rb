puts "Inserting category data.."
[
    ["사랑", "love"],
    ["사는얘기", "life"],
    ["저.. 진지합니다", "serious"]
].each do |x|
  Category.create(name: x[0], en_name: x[1])
end