forbid(
  principal == a::"v$",
  action == Action::"action",
  resource
) when {
  (true && context) && "\t"
};
