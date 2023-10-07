class Constants {
  static const String appName = 'Sky Learn';
  static const developerUrl = 'https://';

  static const emptyString = '';
  static const emptyDashedString = '---';
  static const orZero = 0;
  static const orZeroDouble = 0.0;
  static const debugPass = 'stackTrace';

  static double padding(double deviceWidth) => deviceWidth * 0.03;
  static double hPadding(double deviceHeight) => deviceHeight * 0.02;
}

class AppDefaults {
  static const mapMarkerDefaultWidth = 50;
  static const mapMarkerMyLocationWidth = 60;
  static const mapMarkerOnlineWidth = 20;

  static const minDragScaleSize = 25;
  static const maxDragScaleSize = 50;
  static const phoneNumberLength = 10;
  static const reportDuration = 1;

  static const minCarouselInfiniteScrollLength = 3;

  static const reportCrossAxisCount = 3;
  static const inAppNotificationDuration = 10;
  static const geofenceRadiusMin = 100.0;
  static const geofenceRadiusMax = 1000.0;
  static const geofenceRadiusStep = 10;

  static const flickVelocity = 1000;
  static const minDragDismissDistance = 100;
  static const drawerHeaderHeightPX = 78.0;

  static const connectionTimeOutSeconds = 60;

  static const splashSec = 1;

  static const animationDurationMSShort = 100;
  static const animationDurationMS = 300;
  static const animationDurationMSLong = 500;
  static const animationDurationSec = 1;
  static const markerAnimationDurationSec = 3;
  static const markerLabelBorderRadius = 4.0;
  static const contentBorderRadius = 8.0;
  static const borderRadius = 16.0;
  static const borderRadiusSmall = 12.0;

  static const contentPaddingXXSmall = 2.0;
  static const contentPaddingXSmall = 4.0;
  static const contentPaddingSmall = 6.0;
  static const contentPadding = 8.0;
  static const padding = 12.0;
  static const paddingLarge = 16.0;
  static const paddingXLarge = 18.0;
  static const paddingXXLarge = 24.0;

  static const feedbackMaxCharacters = 120;
  static const reportStaffMaxCharacters = 120;

  static const minZoomLevel = 6.0;
  static const minZoomClamp = 12.0;
  static const midZoomLevel = 14.0;
  static const maxZoomLevel = 18.0;
  static const maxZoomClamp = 16.0;
}

class UrlConstants {
  static const baseUrl = '';
  static const version = '/api/v1';

  static const versionUrl = '$baseUrl$version';
}

class Routes {
  static const onboardingPage = '/onboarding';
  static const loginPage = '/login';
  static const registerPage = '/register';
  static const forgotPasswordPage = '/forgot-password';
  static const otpVerificationPage = '/otp-verification';
  static const createPasswordPage = '/create-password';
  static const homePage = '/home';
}
