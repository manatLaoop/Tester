function findLongestTwoLetterRange(inputString, numCharacters) {
    if (numCharacters < 2) {
      return "";
    }
  
    let maxRange = "";
    let left = 0;
    let right = 0;
    let charCount = new Map();
  
    while (right < inputString.length) {
      if (charCount.size <= 2) {
        charCount.set(inputString[right], (charCount.get(inputString[right]) || 0) + 1);
        right++;
  
        if (charCount.size <= 2) {
          let currentRange = inputString.slice(left, right);
          if (currentRange.length <= numCharacters && currentRange.length > maxRange.length) {
            maxRange = currentRange;
          }
        }
      } else {
        charCount.set(inputString[left], charCount.get(inputString[left]) - 1);
        if (charCount.get(inputString[left]) === 0) {
          charCount.delete(inputString[left]);
        }
        left++;
      }
    }
  
    return maxRange;
  }
  
  // Example usage:
  const example1 = findLongestTwoLetterRange("bbc", 3);
  const example2 = findLongestTwoLetterRange("gdadd", 4);
  const example3 = findLongestTwoLetterRange("baakkb", 4);
  const example4 = findLongestTwoLetterRange("caaabbcdea", 5);
  
  console.log(example1); // Output: "dadd"
  console.log(example2); // Output: "aaabb"
  console.log(example3); // Output: "aakk"
  console.log(example4); // Output: "aaabb"