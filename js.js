var areOccurrencesEqual = function (s) {
  let hash = {};

  for (let i = 0; i < s.length; i++) {
    if (hash[s[i]] !== undefined) {
      hash[s[i]]++;
    } else {
      hash[s[i]] = 1;
    }
  }

  let n = hash[s[0]];

  for (key in hash) {
    if (hash[key] !== n) {
      return false;
    }
  }

  return true;
};


var countBalls = function (lowLimit, highLimit) {
  let boxes = {};

  for (let i = lowLimit; i <= highLimit; i++) {
    if (boxes[boxDecider(i)]) {
      boxes[boxDecider(i)]++;
    } else {
      boxes[boxDecider(i)] = 1;
    }
  }

  let count = 0;

  for (box in boxes) {
    if (boxes[box] > count) {
      count = boxes[box];
    }
  }

  return count;
};

function boxDecider(n) {
  let str = n.toString();
  let box = 0;

  for (let i = 0; i < str.length; i++) {
    box += parseInt(str[i]);
  }

  return box;
}

var isPalindrome = function(x) {
    return x === parseInt(x.toString().split('').reverse().join(''));
};

function sumOrProduct(array, n) {
  // your code here
  let sorted = array.sort(function(a, b){return a - b});
  let prod = 1;
  
  for (let i = 0; i < n; i++) {
    prod *= array[i];
  }
  
  let sum = 0;
  let num = n;
  
  for (let j = array.length - 1; num > 0; num--) {
    sum += array[j];
    j--;
  }

  if (prod > sum) {
    return "product"
  } else if (sum > prod) {
    return "sum"
  } else {
    return "same"
  }
};