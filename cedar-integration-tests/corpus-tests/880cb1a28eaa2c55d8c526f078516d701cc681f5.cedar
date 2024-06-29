forbid(
  principal == a::"",
  action,
  resource is a in a::""
) when {
  (true && [false, true, a::"", !"", principal]) && principal
};
