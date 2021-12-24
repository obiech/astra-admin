// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/cupertino.dart' as _i22;
import 'package:flutter/material.dart' as _i21;

import '../../../infrastructure/chat/models/chat/chat.dart' as _i23;
import '../../../infrastructure/chat/models/chat/message.dart' as _i24;
import '../../astra/add_client/registration.dart' as _i10;
import '../../astra/favorite/favorite_screen.dart' as _i11;
import '../../astra/home_screen.dart' as _i9;
import '../../astra/message/chat_screen.dart' as _i14;
import '../../astra/message/message_screen.dart' as _i12;
import '../../astra/profile/about/about_screen.dart' as _i19;
import '../../astra/profile/my_pofile/my_profile.dart' as _i18;
import '../../astra/profile/my_pofile/photo/image_pick_screen.dart' as _i17;
import '../../astra/profile/my_pofile/photo/show_image_full_screen.dart'
    as _i16;
import '../../astra/profile/profile_screen.dart' as _i15;
import '../../astra/profile/store/store_screen.dart' as _i7;
import '../../astra/profile/support/support_screen.dart' as _i20;
import '../../auth/code_screen.dart' as _i4;
import '../../auth/confirm_password_screen.dart' as _i6;
import '../../auth/how_to_get_club_screen.dart' as _i3;
import '../../auth/password_screen.dart' as _i5;
import '../../auth/phone_number_screen.dart' as _i2;
import '../../auth/splash_screen.dart' as _i1;
import '../../auth/widgets/finish_register_screen.dart' as _i8;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    PhoneNumberScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PhoneNumberScreen());
    },
    HowToGetClubScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HowToGetClubScreen());
    },
    CodeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CodeScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.CodeScreen(key: args.key, phoneNumber: args.phoneNumber));
    },
    PasswordScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PasswordScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.PasswordScreen(
              key: args.key, phoneNumber: args.phoneNumber, code: args.code));
    },
    ConfirmPasswordScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPasswordScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ConfirmPasswordScreen(
              key: args.key,
              phoneNumber: args.phoneNumber,
              confirmePassword: args.confirmePassword));
    },
    StoreScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.StoreScreen());
    },
    FinishRegisterScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.FinishRegisterScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.HomeScreen());
    },
    ClientRegistrationRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ClientRegistration());
    },
    FavoritesRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FavoriteScreen());
    },
    MessageRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.MessageScreen());
    },
    SettingsRouter.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.EmptyRouterPage());
    },
    MessageChatScreenRoute.name: (routeData) {
      final args = routeData.argsAs<MessageChatScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.MessageChatScreen(
              key: args.key, chat: args.chat, lastMessage: args.lastMessage));
    },
    ProfileScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ProfileScreen());
    },
    ShowImageFullScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.ShowImageFullScreen());
    },
    ImagePickScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.ImagePickScreen());
    },
    MyProfileScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.MyProfileScreen());
    },
    AboutScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.AboutScreen());
    },
    SupportScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.SupportScreen());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i13.RouteConfig(PhoneNumberScreenRoute.name,
            path: '/phone-number-screen'),
        _i13.RouteConfig(HowToGetClubScreenRoute.name,
            path: '/how-to-get-club-screen'),
        _i13.RouteConfig(CodeScreenRoute.name, path: '/code-screen'),
        _i13.RouteConfig(PasswordScreenRoute.name, path: '/password-screen'),
        _i13.RouteConfig(ConfirmPasswordScreenRoute.name,
            path: '/confirm-password-screen'),
        _i13.RouteConfig(StoreScreenRoute.name, path: '/store-screen'),
        _i13.RouteConfig(FinishRegisterScreenRoute.name,
            path: '/finish-register-screen'),
        _i13.RouteConfig(HomeScreenRoute.name, path: '', children: [
          _i13.RouteConfig(ClientRegistrationRouter.name,
              path: 'clientRegistration', parent: HomeScreenRoute.name),
          _i13.RouteConfig(FavoritesRouter.name,
              path: '', parent: HomeScreenRoute.name),
          _i13.RouteConfig(MessageRouter.name,
              path: 'message',
              parent: HomeScreenRoute.name,
              children: [
                _i13.RouteConfig(MessageChatScreenRoute.name,
                    path: '', parent: MessageRouter.name)
              ]),
          _i13.RouteConfig(SettingsRouter.name,
              path: 'settings',
              parent: HomeScreenRoute.name,
              children: [
                _i13.RouteConfig(ProfileScreenRoute.name,
                    path: '', parent: SettingsRouter.name),
                _i13.RouteConfig(ShowImageFullScreenRoute.name,
                    path: ':showImageFullScreen', parent: SettingsRouter.name),
                _i13.RouteConfig(ImagePickScreenRoute.name,
                    path: ':imagePickScreen', parent: SettingsRouter.name),
                _i13.RouteConfig(MyProfileScreenRoute.name,
                    path: ':myProfileScreen', parent: SettingsRouter.name),
                _i13.RouteConfig(AboutScreenRoute.name,
                    path: ':aboutScreen', parent: SettingsRouter.name),
                _i13.RouteConfig(SupportScreenRoute.name,
                    path: ':supportScreen', parent: SettingsRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i13.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.PhoneNumberScreen]
class PhoneNumberScreenRoute extends _i13.PageRouteInfo<void> {
  const PhoneNumberScreenRoute()
      : super(PhoneNumberScreenRoute.name, path: '/phone-number-screen');

  static const String name = 'PhoneNumberScreenRoute';
}

/// generated route for
/// [_i3.HowToGetClubScreen]
class HowToGetClubScreenRoute extends _i13.PageRouteInfo<void> {
  const HowToGetClubScreenRoute()
      : super(HowToGetClubScreenRoute.name, path: '/how-to-get-club-screen');

  static const String name = 'HowToGetClubScreenRoute';
}

/// generated route for
/// [_i4.CodeScreen]
class CodeScreenRoute extends _i13.PageRouteInfo<CodeScreenRouteArgs> {
  CodeScreenRoute({_i22.Key? key, required String phoneNumber})
      : super(CodeScreenRoute.name,
            path: '/code-screen',
            args: CodeScreenRouteArgs(key: key, phoneNumber: phoneNumber));

  static const String name = 'CodeScreenRoute';
}

class CodeScreenRouteArgs {
  const CodeScreenRouteArgs({this.key, required this.phoneNumber});

  final _i22.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'CodeScreenRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i5.PasswordScreen]
class PasswordScreenRoute extends _i13.PageRouteInfo<PasswordScreenRouteArgs> {
  PasswordScreenRoute(
      {_i22.Key? key, required String phoneNumber, String? code})
      : super(PasswordScreenRoute.name,
            path: '/password-screen',
            args: PasswordScreenRouteArgs(
                key: key, phoneNumber: phoneNumber, code: code));

  static const String name = 'PasswordScreenRoute';
}

class PasswordScreenRouteArgs {
  const PasswordScreenRouteArgs(
      {this.key, required this.phoneNumber, this.code});

  final _i22.Key? key;

  final String phoneNumber;

  final String? code;

  @override
  String toString() {
    return 'PasswordScreenRouteArgs{key: $key, phoneNumber: $phoneNumber, code: $code}';
  }
}

/// generated route for
/// [_i6.ConfirmPasswordScreen]
class ConfirmPasswordScreenRoute
    extends _i13.PageRouteInfo<ConfirmPasswordScreenRouteArgs> {
  ConfirmPasswordScreenRoute(
      {_i22.Key? key,
      required String phoneNumber,
      required String confirmePassword})
      : super(ConfirmPasswordScreenRoute.name,
            path: '/confirm-password-screen',
            args: ConfirmPasswordScreenRouteArgs(
                key: key,
                phoneNumber: phoneNumber,
                confirmePassword: confirmePassword));

  static const String name = 'ConfirmPasswordScreenRoute';
}

class ConfirmPasswordScreenRouteArgs {
  const ConfirmPasswordScreenRouteArgs(
      {this.key, required this.phoneNumber, required this.confirmePassword});

  final _i22.Key? key;

  final String phoneNumber;

  final String confirmePassword;

  @override
  String toString() {
    return 'ConfirmPasswordScreenRouteArgs{key: $key, phoneNumber: $phoneNumber, confirmePassword: $confirmePassword}';
  }
}

/// generated route for
/// [_i7.StoreScreen]
class StoreScreenRoute extends _i13.PageRouteInfo<void> {
  const StoreScreenRoute()
      : super(StoreScreenRoute.name, path: '/store-screen');

  static const String name = 'StoreScreenRoute';
}

/// generated route for
/// [_i8.FinishRegisterScreen]
class FinishRegisterScreenRoute extends _i13.PageRouteInfo<void> {
  const FinishRegisterScreenRoute()
      : super(FinishRegisterScreenRoute.name, path: '/finish-register-screen');

  static const String name = 'FinishRegisterScreenRoute';
}

/// generated route for
/// [_i9.HomeScreen]
class HomeScreenRoute extends _i13.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i13.PageRouteInfo>? children})
      : super(HomeScreenRoute.name, path: '', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i10.ClientRegistration]
class ClientRegistrationRouter extends _i13.PageRouteInfo<void> {
  const ClientRegistrationRouter()
      : super(ClientRegistrationRouter.name, path: 'clientRegistration');

  static const String name = 'ClientRegistrationRouter';
}

/// generated route for
/// [_i11.FavoriteScreen]
class FavoritesRouter extends _i13.PageRouteInfo<void> {
  const FavoritesRouter() : super(FavoritesRouter.name, path: '');

  static const String name = 'FavoritesRouter';
}

/// generated route for
/// [_i12.MessageScreen]
class MessageRouter extends _i13.PageRouteInfo<void> {
  const MessageRouter({List<_i13.PageRouteInfo>? children})
      : super(MessageRouter.name, path: 'message', initialChildren: children);

  static const String name = 'MessageRouter';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class SettingsRouter extends _i13.PageRouteInfo<void> {
  const SettingsRouter({List<_i13.PageRouteInfo>? children})
      : super(SettingsRouter.name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i14.MessageChatScreen]
class MessageChatScreenRoute
    extends _i13.PageRouteInfo<MessageChatScreenRouteArgs> {
  MessageChatScreenRoute(
      {_i22.Key? key,
      required _i23.Chat chat,
      required _i24.Message lastMessage})
      : super(MessageChatScreenRoute.name,
            path: '',
            args: MessageChatScreenRouteArgs(
                key: key, chat: chat, lastMessage: lastMessage));

  static const String name = 'MessageChatScreenRoute';
}

class MessageChatScreenRouteArgs {
  const MessageChatScreenRouteArgs(
      {this.key, required this.chat, required this.lastMessage});

  final _i22.Key? key;

  final _i23.Chat chat;

  final _i24.Message lastMessage;

  @override
  String toString() {
    return 'MessageChatScreenRouteArgs{key: $key, chat: $chat, lastMessage: $lastMessage}';
  }
}

/// generated route for
/// [_i15.ProfileScreen]
class ProfileScreenRoute extends _i13.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(ProfileScreenRoute.name, path: '');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i16.ShowImageFullScreen]
class ShowImageFullScreenRoute extends _i13.PageRouteInfo<void> {
  const ShowImageFullScreenRoute()
      : super(ShowImageFullScreenRoute.name, path: ':showImageFullScreen');

  static const String name = 'ShowImageFullScreenRoute';
}

/// generated route for
/// [_i17.ImagePickScreen]
class ImagePickScreenRoute extends _i13.PageRouteInfo<void> {
  const ImagePickScreenRoute()
      : super(ImagePickScreenRoute.name, path: ':imagePickScreen');

  static const String name = 'ImagePickScreenRoute';
}

/// generated route for
/// [_i18.MyProfileScreen]
class MyProfileScreenRoute extends _i13.PageRouteInfo<void> {
  const MyProfileScreenRoute()
      : super(MyProfileScreenRoute.name, path: ':myProfileScreen');

  static const String name = 'MyProfileScreenRoute';
}

/// generated route for
/// [_i19.AboutScreen]
class AboutScreenRoute extends _i13.PageRouteInfo<void> {
  const AboutScreenRoute() : super(AboutScreenRoute.name, path: ':aboutScreen');

  static const String name = 'AboutScreenRoute';
}

/// generated route for
/// [_i20.SupportScreen]
class SupportScreenRoute extends _i13.PageRouteInfo<void> {
  const SupportScreenRoute()
      : super(SupportScreenRoute.name, path: ':supportScreen');

  static const String name = 'SupportScreenRoute';
}
