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
