forbid(
  principal in a::"\0\t\0\0\0",
  action == Action::"action",
  resource in a::"\0\t\0\0\0"
) when {
  true && resource
};
