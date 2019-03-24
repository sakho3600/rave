// select last 12 characters
lastCha(digest) {
  var endIndex = digest.runes.length;
  var startIndex = endIndex - 12;
  var last12 = digest.substring(startIndex, endIndex);
   
  return last12;
}

// select first 12 characters
firstCha(digest) {
  var first12 = digest.substring(0, 12);
  
  return first12;
}

