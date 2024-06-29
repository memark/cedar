forbid(
  principal == a::"",
  action,
  resource == a::""
) when {
  ((true && ((a::"" == principal).containsAll(principal))) && principal) && principal
};
