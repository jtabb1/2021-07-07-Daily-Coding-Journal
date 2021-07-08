# @param {String} s
# @return {String}


# Input: s = "is2 sentence4 This1 a3"
# Output: "This is a sentence"
# Explanation: Sort the words in s to their original positions "This1 is2 a3 sentence4", then remove the numbers.

# 2 <= s.length <= 200
# s consists of lowercase and uppercase English letters, spaces, and digits from 1 to 9.
# The number of words in s is between 1 and 9.
# The words in s are separated by a single space.
# s contains no leading or trailing spaces.

def sort_sentence(s)
    # split the String
    string_array = s.split(" ")
    # sort the array using the integer by the String
    string_array.sort! do |first_string, second_string|
      first_string[-1].to_i <=> second_string[-1].to_i
    end
    # puts string_array
    # remove the numbers from those String
    string_array.map! {|et| et.match(/[A-Za-z]+/)}
    # puts string_array
    # join the strings together
    string_array.join(" ")
end

s = "is2 sentence4 This1 a3"
puts sort_sentence(s)
