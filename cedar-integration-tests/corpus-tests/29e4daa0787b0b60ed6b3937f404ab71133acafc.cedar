permit(
  principal == a::"\u{18}.3",
  action == Action::"action",
  resource
) when {
  true && (!principal)
};
