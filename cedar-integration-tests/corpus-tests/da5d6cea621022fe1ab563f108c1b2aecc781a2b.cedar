forbid(
  principal == a::"",
  action in [],
  resource is a in a::""
) when {
  (true && (a::""[""])) && principal
};
