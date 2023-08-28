import 'package:firebasetest/authentication/components/show_snackbar.dart';
import 'package:firebasetest/authentication/services/auth_service.dart';
import 'package:flutter/material.dart';

showPasswordConfirmationDialog(
    {required BuildContext context, required String email}) {
  showDialog(
    context: context,
    builder: (context) {
      TextEditingController confirmPassword = TextEditingController();
      return AlertDialog(
        title: Text("Deseja remover a conta com o e-mail $email?"),
        content: SizedBox(
          height: 175,
          child: Column(
            children: [
              const Text(
                  "Para confirmar exclusão da conta, insira sua senha: "),
              TextFormField(
                controller: confirmPassword,
                obscureText: true,
              )
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                AuthService()
                    .deleteAccount(password: confirmPassword.text)
                    .then((String? erro) {
                  if (erro == null) {
                    Navigator.pop(context);
                    showDialogSuccesDelete(context: context);
                  } else {
                   
                    Navigator.pop(context);
                    showSnackBar(context: context, error: erro);
                  }
                });
              },
              child: const Text("EXCLUIR CONTA"))
        ],
      );
    },
  );
}

showDialogSuccesDelete({required BuildContext context}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Conta excluída com sucesso"),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 40,
                  ))
            ],
          ),
        );
      });
}
