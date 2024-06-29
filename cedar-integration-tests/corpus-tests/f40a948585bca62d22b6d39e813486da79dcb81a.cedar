forbid(
  principal in l::a::"",
  action == l::Action::"action",
  resource in l::a::"+8\'"
) when {
  ((true && (principal has "")) && principal) && principal
};
