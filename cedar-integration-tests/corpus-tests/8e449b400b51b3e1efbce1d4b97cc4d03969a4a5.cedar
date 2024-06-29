forbid(
  principal == l::a::"\u{8}",
  action == l::Action::"action",
  resource == l::a::"\u{8}"
) when {
  true && (!((ip(principal)) has ""))
};
