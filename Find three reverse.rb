def find_three_desc(arr, target_sum)
  arr.sort!.reverse!  # Ordena do maior para o menor
  n = arr.length

  (0..n-3).each do |i|
    left = i + 1
    right = n - 1

    while left < right
      current_sum = arr[i] + arr[left] + arr[right]

      if current_sum == target_sum
        return [arr[i], arr[left], arr[right]]
      elsif current_sum < target_sum
        right -= 1
      else
        left += 1
      end
    end
  end

  nil
end

arr = [1, 2, 4, 5, 6, 7, 8, 9]
target_sum = 15

result = find_three_desc(arr, target_sum)

if result
  puts "Os três números são: #{result}"
else
  puts "Nenhuma combinação encontrada."
end
