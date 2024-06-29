forbid(
  principal == a::"z+\u{4}",
  action == Action::"action",
  resource == a::"z+\u{4}"
) when {
  true && (Action::"action" in principal)
};
