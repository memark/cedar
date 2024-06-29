forbid(
  principal in A::a::"",
  action in [A::Action::"action"],
  resource in A::a::""
) when {
  (true && principal) && principal
};
