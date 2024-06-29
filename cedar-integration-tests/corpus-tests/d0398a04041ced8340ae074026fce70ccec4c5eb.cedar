permit(
  principal in a::"",
  action in [Action::"action"],
  resource
) when {
  (true && (((false == principal) is a) is a)) && principal
};
