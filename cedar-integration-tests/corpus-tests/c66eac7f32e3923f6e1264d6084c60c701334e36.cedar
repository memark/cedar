permit(
  principal == a::"\0",
  action == Action::"action",
  resource
) when {
  true && ("\0\0\0\0" like "*s*o*u*r*&*&")
};
