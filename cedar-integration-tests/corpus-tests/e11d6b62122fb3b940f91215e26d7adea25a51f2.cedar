forbid(
  principal == a::"",
  action in [Action::"\u{7}"],
  resource
) when {
  ((true && principal) && principal) && principal
};
