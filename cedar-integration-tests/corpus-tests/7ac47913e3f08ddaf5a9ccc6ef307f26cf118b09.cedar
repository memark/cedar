@A("?")
forbid(
  principal in a::"\0\u{1a}\0\"\0",
  action == Action::"action",
  resource == a::"\0\u{1a}\0\"\0"
) when {
  true
};
