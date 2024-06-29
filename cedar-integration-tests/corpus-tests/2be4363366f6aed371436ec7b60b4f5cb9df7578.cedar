permit(
  principal is a in a::"\u{2}\n",
  action in [Action::"action"],
  resource is a in a::"\u{2}\n"
) when {
  (true && ((principal is a) is a)) && principal
};
