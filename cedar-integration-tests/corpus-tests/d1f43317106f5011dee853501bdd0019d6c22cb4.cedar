permit(
  principal == a::"",
  action in [Action::"action"],
  resource
) when {
  (true && (Action::"action"["\0"])) && (false == principal)
};
