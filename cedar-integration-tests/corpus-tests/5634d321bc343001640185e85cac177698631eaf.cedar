@K0("\0\0\0")
forbid(
  principal in a::"",
  action == Action::"action",
  resource == a::""
) when {
  ((true && a::"") && principal) && principal
};
