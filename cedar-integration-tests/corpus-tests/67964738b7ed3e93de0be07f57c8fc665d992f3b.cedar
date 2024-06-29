forbid(
  principal == l::a::"\u{2}p\0\0",
  action == l::Action::"action",
  resource
) when {
  true && (false is l::a)
};
