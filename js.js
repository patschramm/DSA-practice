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

var isValid = function(s) {
    let par = true;
    let brac = true;
    let curl = true;
    
    for (let i = 0; i < s.length; i++) {
        if (s[i] === "{" && brac && par && curl) {
            brac = false;
        } elseif (s[i] === "}" && !brac) {
            brac = true;
        } elsif ((s[i] === "}" && brac) || (s[i] === "{" && !brac)) {
            return false;
        } elseif (s[i] === "(" && par && brac && curl) {
            par = false;
        } elseif (s[i] === ")" && !par) {
            brac = true;
        } elsif ((s[i] === ")" && par) || (s[i] === "(" && !par)) {
            return false;
        } 
    }
    
};