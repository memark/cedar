permit(
  principal in a::"",
  action in [Action::"action"],
  resource
) when {
  (true && (((false == principal) == principal) is a)) && principal
};
