permit(
  principal in a::"",
  action == Action::"action",
  resource in a::""
) when {
  (true && (((false like "\0*\0*(*") == principal) == principal)) && principal
};
