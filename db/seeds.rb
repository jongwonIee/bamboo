puts "Inserting category data.."
[
    ["사랑"],
    ["사는얘기"],
    ["저.. 진지합니다"]
].each do |x|
  Category.create(name: x[0])
end