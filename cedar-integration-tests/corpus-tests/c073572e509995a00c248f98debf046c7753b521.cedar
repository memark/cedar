forbid(
  principal == a::"",
  action,
  resource in a::""
) when {
  (true && ((!(principal like "\t*=*")) == principal)) && principal
};
