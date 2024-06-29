permit(
  principal in a::"",
  action in [Action::"action"],
  resource in a::""
) when {
  (true && (((false == A::"").containsAny(principal)) like "\0\0`")) && principal
};
