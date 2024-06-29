@l("")
forbid(
  principal == l::a::"\0\0\0",
  action in [l::Action::"action"],
  resource
) when {
  true && (principal == principal)
};
