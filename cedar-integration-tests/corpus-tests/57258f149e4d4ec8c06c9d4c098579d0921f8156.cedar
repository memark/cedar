forbid(
  principal is l::a in l::a::"",
  action in [l::Action::"action"],
  resource is l::a in l::a::""
) when {
  true && (((context || principal) || principal) || principal)
};
