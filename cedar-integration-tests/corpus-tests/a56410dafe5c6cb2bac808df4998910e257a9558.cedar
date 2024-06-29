forbid(
  principal,
  action == A::Action::"action",
  resource is A::a in A::a::"\0"
) when {
  true
};
