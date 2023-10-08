class LoginState {
  bool isLoading;
  bool isError;
  String error;

  LoginState({this.isLoading = false, this.isError = false, this.error = ""});

  LoginState copyWith({
    bool? isLoading,
    bool? isError,
    String? error,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      isError: isError ?? this.isError,
      error: error ?? this.error,
    );
  }
}
