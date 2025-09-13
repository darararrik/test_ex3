abstract interface class IAuthRepository {
  Future<bool> checkAuth();
  Future<bool> signIn({required String email, required String password});
  Future<bool> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  });
}
