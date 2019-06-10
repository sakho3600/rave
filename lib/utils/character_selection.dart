// select last 12 characters
String lastCha(keyHash) {
  var endIndex = keyHash.length; // at 32th index
  var startIndex = endIndex - 12; // at 20th index i.e 32 - 12
  var last12 = keyHash.substring(
      startIndex, endIndex); // select characters from the 20th to the 32nd

  return last12;
}

// select first 12 characters
String firstCha(keyHash) {
  var first12 = keyHash.substring(0, 12); // from the first to the 12th

  return first12;
}
