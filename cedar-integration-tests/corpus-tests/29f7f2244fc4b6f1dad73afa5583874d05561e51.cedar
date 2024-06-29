forbid(
  principal == a::"",
  action == Action::"action",
  resource in a::""
) when {
  (true && principal) && (((false < principal) == principal) < principal)
};
