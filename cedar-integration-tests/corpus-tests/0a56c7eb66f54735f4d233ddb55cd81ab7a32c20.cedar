permit(
  principal == a::"",
  action in [Action::"action"],
  resource == a::""
) when {
  ((true && (true in Action::"action")) && principal) && principal
};
