@A("")
permit(
  principal in a::"\0 ",
  action in [Action::"action"],
  resource is a
) when {
  true
};
