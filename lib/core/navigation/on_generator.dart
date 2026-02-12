import 'package:go_router/go_router.dart';
import 'package:untitled/core/navigation/routes_name.dart';
import 'package:untitled/features/auth/screens/changed_pass.dart';
import 'package:untitled/features/auth/screens/forget_pass_screen.dart';
import 'package:untitled/features/auth/screens/login_screen.dart';
import 'package:untitled/features/auth/screens/new_pass_screen.dart';
import 'package:untitled/features/auth/screens/otp_verify_screen.dart';
import 'package:untitled/features/auth/screens/register_screen.dart';
import 'package:untitled/features/main/main_screen.dart';
import 'package:untitled/features/on_boarding/on_boarding.dart';
class OnGenerator{
  static final GoRouter routes=GoRouter(
    initialLocation:RoutesName.initial,
    routes: [
      GoRoute(path: RoutesName.initial,name:RoutesName.initial,builder: (context,state)=>OnBoardingScreen()),
      GoRoute(path: RoutesName.login,name: RoutesName.login,builder: (context,state)=>LoginScreen()),
      GoRoute(path:RoutesName.register,name: RoutesName.register,builder: (context,state)=>RegisterScreen()),
      GoRoute(path: RoutesName.forgotPass,name: RoutesName.forgotPass,builder: (context,state)=>ForgetPassScreen()),
      GoRoute(path: RoutesName.sendOTP,name: RoutesName.sendOTP,builder: (context,state)=>OTPVerifyScreen()),
      GoRoute(path: RoutesName.newPass,name: RoutesName.newPass,builder: (context,state)=>NewPassScreen()),
      GoRoute(path: RoutesName.changedPass,name: RoutesName.changedPass,builder: (context,state)=>ChangedPassScreen()),
      GoRoute(path: RoutesName.main,name: RoutesName.main,builder: (context,state)=>MainScreen()),
    ]
  );
}