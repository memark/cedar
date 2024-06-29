forbid(
  principal is G::A::A::A::a in G::A::A::A::a::"\0\"?\0\0",
  action in [G::A::A::A::Action::"action"],
  resource in G::A::A::A::a::"\0\"?\0\0"
) when {
  (true && principal) && principal
};
