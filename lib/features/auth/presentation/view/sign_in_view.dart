// import 'package:delivery_app/core/api/auth_services.dart';
// import 'package:delivery_app/features/auth/presentation/widget/header_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
// import 'package:delivery_app/core/function/navigation.dart';
// import 'package:delivery_app/core/utils/app_colors.dart';
// import 'package:delivery_app/core/widget/cusstom_text_field.dart';
// import 'package:delivery_app/core/widget/custom_button.dart';

// class SignInView extends StatefulWidget {
//   const SignInView({super.key});

//   @override
//   _SignInViewState createState() => _SignInViewState();
// }

// class _SignInViewState extends State<SignInView> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   final _formKey = GlobalKey<FormState>();
//   bool isLoading = false;
//   String? errorMessage;

//   Future<void> _handleLogin() async {
//     if (!_formKey.currentState!.validate()) {
//       setState(() {
//         errorMessage = "Please fill in all fields correctly.";
//       });
//       return;
//     }

//     setState(() {
//       isLoading = true;
//       errorMessage = null;
//     });

//     try {
//       final authService = AuthService();
//       final response = await authService.login(
//         emailController.text.trim(),
//         passwordController.text.trim(),
//       );

//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(response['message'] ?? 'Login successful')),
//       );

//       CustomNavigationReplacement(context, '/HomeView');
//     } catch (e) {
//       setState(() {
//         errorMessage = e.toString();
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Error: ${e.toString()}")),
//       );
//     } finally {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff1A2E35),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 150),
//             const HeaderWidget(),
//             const SizedBox(height: 100),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 50),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     CustomTextField(
//                       controller: emailController,
//                       label: 'Email or Phone',
//                       labelColor: Colors.grey,
//                       hintText: 'Email or Phone',
//                       textColor: Colors.grey,
//                       icon: const Icon(Icons.person, color: Colors.grey),
//                       color: const Color(0xff1A2E35),
//                       obscureText: false,
//                       onChanged: (value) {},
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter your email or phone';
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(height: 24),
//                     CustomTextField(
//                       controller: passwordController,
//                       label: 'Password',
//                       labelColor: Colors.grey,
//                       hintText: 'Password',
//                       textColor: Colors.grey,
//                       icon: const Icon(Icons.lock, color: Colors.grey),
//                       color: const Color(0xff1A2E35),
//                       obscureText: true,
//                       onChanged: (value) {},
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter your password';
//                         }
//                         if (value.length < 6) {
//                           return 'Password must be at least 6 characters long';
//                         }
//                         return null;
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 65),
//             Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   if (errorMessage != null)
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         errorMessage!,
//                         style: const TextStyle(
//                           color: Colors.red,
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   const SizedBox(height: 32),
//                   GestureDetector(
//                     onTap: () {
//                       CustomNavigationReplacement(
//                           context, '/ForgetPasswordView');
//                     },
//                     child: const Text(
//                       'Forgot Password?',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                         decoration: TextDecoration.underline,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 32),
//                   CustomButton(
//                     onTap: () {
//                       _handleLogin();
//                     },
//                     text: 'Login',
//                     color: AppColors.tealGreen,
//                   ),
//                   const SizedBox(height: 12),
//                   const Text(
//                     'or',
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   CustomButton(
//                     onTap: () {
//                       CustomNavigationReplacement(context, '/SignUpView');
//                     },
//                     text: 'Create an Account',
//                     color: AppColors.tealGreen,
//                   ),
//                   // امتداد اللون الأبيض لأسفل الصفحة
//                   const SizedBox(height: 100),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:delivery_app/core/widget/cusstom_text_field.dart';
import 'package:delivery_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_app/features/auth/presentation/view_model/cubits/cubit/user_cubit.dart';
import 'package:delivery_app/features/auth/presentation/widget/header_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _signIn(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      context.read<UserCubit>().signIn(email: email, password: password);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields correctly')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2E35),
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sign In Successful')),
            );
            CustomNavigationReplacement(context, '/HomeView');
          } else if (state is SignInFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errMessage)),
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 150),
                  const HeaderWidget(),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: emailController,
                            label: 'Email or Phone',
                            labelColor: Colors.grey,
                            hintText: 'Email or Phone',
                            textColor: Colors.grey,
                            icon: const Icon(Icons.person, color: Colors.grey),
                            color: const Color(0xff1A2E35),
                            obscureText: false,
                            onChanged: (value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email or phone';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 24),
                          CustomTextField(
                            controller: passwordController,
                            label: 'Password',
                            labelColor: Colors.grey,
                            hintText: 'Password',
                            textColor: Colors.grey,
                            icon: const Icon(Icons.lock, color: Colors.grey),
                            color: const Color(0xff1A2E35),
                            obscureText: true,
                            onChanged: (value) {},
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 65),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              CustomNavigationReplacement(
                                  context, '/ForgetPasswordView');
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          CustomButton(
                            onTap: () {
                              _signIn(context);
                            },
                            text: 'Login',
                            color: AppColors.tealGreen,
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'or',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          CustomButton(
                            onTap: () {
                              CustomNavigationReplacement(
                                  context, '/SignUpView');
                            },
                            text: 'Create an Account',
                            color: AppColors.tealGreen,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if (state is SignInLoading)
                Container(
                  color: const Color(0xff1A2E35).withOpacity(0.8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(color: AppColors.tealGreen),
                        const SizedBox(height: 20),
                        Text(
                          'Loading...',
                          style: TextStyle(
                            color: AppColors.tealGreen,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
