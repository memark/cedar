permit(
  principal is A in A::"",
  action in [Action::"action"],
  resource is A in A::"\u{6}"
) when {
  (true && (!principal)) && principal
};
