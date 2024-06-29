permit(
  principal,
  action == Action::"action",
  resource == a::""
) when {
  true && (context == ((true == false) == action))
};
