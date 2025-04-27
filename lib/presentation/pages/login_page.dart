import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/application/sign_in/sign_in_cubit.dart';
import 'package:deliver_eats/core/commons/assets_path.dart';
import 'package:deliver_eats/core/commons/colors_const.dart';
import 'package:deliver_eats/core/commons/custom_text_theme_accessor_file.dart';
import 'package:deliver_eats/core/injection/injection.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';
import 'package:deliver_eats/presentation/widgets/atoms/custom_checkbox.dart';
import 'package:deliver_eats/presentation/widgets/organisms/text_form_field.dart';
import 'package:deliver_eats/presentation/widgets/organisms/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/atoms/hyperlink.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInCubit>(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Padding(
            padding: UIHelper.padding(vertical: 24, horizontal: 16),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Hello! Welcome to DeliverEAT\'s',
                    style: textTheme.displayMdMedium.copyWith(
                      color: ColorConstant.black,
                    ),
                  ),
                  UIHelper.verticalSpace(24),
                  BlocBuilder<SignInCubit, SignInState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          TextFormFieldCustom(
                            controller:
                                context.read<SignInCubit>().emailController,
                            hintText: 'Email / Phone Number',
                            validator: (_) => state.showEmailErrorMsg,
                          ),
                          UIHelper.verticalSpace(8),
                          TextFormFieldCustom(
                            keyboardType: TextInputType.visiblePassword,
                            controller:
                                context.read<SignInCubit>().passwordController,
                            hintText: 'Password',
                            validator: (_) => state.showPasswordErrorMsg,
                          ),
                          UIHelper.verticalSpace(8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CustomCheckbox(onTap: () {}, status: false),
                                  UIHelper.horizontalSpace(8),
                                  Text(
                                    'Remember me',
                                    style: textTheme.textSmRegular.copyWith(
                                      color: ColorConstant.gray500,
                                    ),
                                  )
                                ],
                              ),
                              Hyperlink(
                                text: 'Forgot Password',
                                onTap: () {},
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(16),
                          Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    await context.read<SignInCubit>().submit();
                                    // Periksa hasil sign in
                                    final currentState =
                                        // ignore: use_build_context_synchronously
                                        context.read<SignInCubit>().state;
                                    if (currentState.failureOrSucceedSignIn
                                        .isSome()) {
                                      currentState.failureOrSucceedSignIn.fold(
                                        () => {}, // Tidak terjadi
                                        (failureOrSuccess) =>
                                            failureOrSuccess.fold(
                                          (failure) {
                                            // Tampilkan error
                                            UIHelper.showToast(
                                              failure.maybeWhen(
                                                serverError: () =>
                                                    'Server error, silakan coba lagi',
                                                invalidCredentials: () =>
                                                    'Email/password salah',
                                                userNotFound: () =>
                                                    'User tidak ditemukan',
                                                orElse: () => 'Sign in gagal',
                                              ),
                                            );
                                          },
                                          (_) {
                                            // Berhasil login, navigasi ke home
                                            AutoRouter.of(context)
                                                .push(const HomeRoute());
                                            UIHelper.showToast('Login Berhasil',
                                                isSuccess: true);
                                          },
                                        ),
                                      );
                                    }
                                  },
                                  child: state.submitting == true
                                      ? const SizedBox(
                                          width: 16,
                                          height: 16,
                                          child: CircularProgressIndicator(
                                            color: ColorConstant.white,
                                          ),
                                        )
                                      : Text(
                                          'Sign In',
                                          style:
                                              textTheme.textSmSemibold.copyWith(
                                            color: ColorConstant.white,
                                          ),
                                        ),
                                ),
                              ),
                              UIHelper.verticalSpace(8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 36,
                                    child: Divider(
                                      thickness: 1,
                                      color: ColorConstant.gray300,
                                    ),
                                  ),
                                  UIHelper.horizontalSpace(16),
                                  Text(
                                    'or',
                                    style: textTheme.textSmRegular
                                        .copyWith(color: ColorConstant.gray500),
                                  ),
                                  UIHelper.horizontalSpace(16),
                                  const SizedBox(
                                    width: 36,
                                    child: Divider(
                                      thickness: 1,
                                      color: ColorConstant.gray300,
                                    ),
                                  ),
                                ],
                              ),
                              UIHelper.verticalSpace(8),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                ColorConstant.white),
                                        side: WidgetStateProperty.all(
                                            const BorderSide(
                                                color: ColorConstant.gray300))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(AssetsPath.googleIcon),
                                        UIHelper.horizontalSpace(12),
                                        Text(
                                          'Sign in with Google',
                                          style:
                                              textTheme.textSmSemibold.copyWith(
                                            color: ColorConstant.gray700,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              UIHelper.verticalSpace(24),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  Wrap(
                    spacing: 4,
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        'By logging in, you agree to the',
                        style: textTheme.textSmRegular
                            .copyWith(color: ColorConstant.gray600),
                      ),
                      Hyperlink(text: 'Terms of Service', onTap: () {}),
                      Text(
                        'and',
                        style: textTheme.textSmRegular
                            .copyWith(color: ColorConstant.gray600),
                      ),
                      Hyperlink(text: 'Community Guidelines', onTap: () {}),
                      Text(
                        'of DeliverEATs',
                        style: textTheme.textSmRegular
                            .copyWith(color: ColorConstant.gray600),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
