forbid(
  principal is a in a::"\0\0\0\u{12}",
  action == Action::"action",
  resource == a::"\0\0\0\u{12}"
) when {
  true
};
