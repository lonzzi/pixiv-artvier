import 'package:artvier/base/base_page.dart';
import 'package:artvier/global/provider/current_account_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TokenLoginDialog extends ConsumerStatefulWidget {
  const TokenLoginDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TokenLoginDialogState();
}

class _TokenLoginDialogState extends BasePageState<TokenLoginDialog> {
  final TextEditingController _refreshTokenController = TextEditingController();

  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  @override
  void dispose() {
    _refreshTokenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(i10n.tokenLogin),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("refresh_token:", style: textTheme.titleMedium),
            TextField(
              autofocus: false,
              controller: _refreshTokenController,
              keyboardType: TextInputType.text,
              textAlign: TextAlign.end,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                isCollapsed: true,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(i10n.promptCancel),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: ValueListenableBuilder<bool>(
            valueListenable: isLoading,
            builder: (BuildContext context, value, Widget? child) {
              return value
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : Text(i10n.login);
            },
          ),
          onPressed: () async {
            if (isLoading.value) return;
            isLoading.value = true;
            bool result =
                await ref.read(globalCurrentAccountProvider.notifier).loginByRefreshToken(_refreshTokenController.text);
            isLoading.value = false;
            if (result && context.mounted) {
              Navigator.of(context).pop();
              Fluttertoast.showToast(msg: i10n.addCollectSucceed);
            }
            if (!result) {
              Fluttertoast.showToast(msg: i10n.loginFailed);
            }
          },
        ),
      ],
    );
  }
}
