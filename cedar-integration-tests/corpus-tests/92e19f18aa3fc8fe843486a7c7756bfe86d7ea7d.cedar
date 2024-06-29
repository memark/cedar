forbid(
  principal == a::"",
  action,
  resource is a in a::""
) when {
  (true && [false, true, true, a::"", !(!principal)]) && principal
};
