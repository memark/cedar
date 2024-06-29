forbid(
  principal == a::"",
  action,
  resource is a in a::""
) when {
  ((true && ((principal == principal).isMulticast())) && principal) && principal
};
