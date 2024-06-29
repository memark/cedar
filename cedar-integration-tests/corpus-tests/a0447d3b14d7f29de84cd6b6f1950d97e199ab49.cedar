forbid(
  principal in a::"\0",
  action == Action::"action",
  resource in a::"\0"
) when {
  (true && (((false == false) == principal) == principal)) && principal
};
