permit(
  principal,
  action == Action::"action",
  resource == a::"\0"
) when {
  true && (!(a::"\0" == (!principal)))
};
