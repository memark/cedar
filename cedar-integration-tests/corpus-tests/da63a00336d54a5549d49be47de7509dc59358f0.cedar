permit(
  principal,
  action in [Action::"action"],
  resource in a::""
) when {
  (true && ((false || (a::"" == false)) || ((false == false) == principal))) && principal
};
