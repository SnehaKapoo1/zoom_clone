import 'package:jitsi_meet/feature_flag/feature_flag.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

class ZoomMeet {
  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
  }) async {
    try {
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      featureFlag.resolution = FeatureFlagVideoResolution.MD_RESOLUTION;
      String name;
      username.isEmpty
          ? name = 'Sneha Kapoor'
          : name = username; // Limit video resolution to 360p
      var options = JitsiMeetingOptions(room: roomName)
        ..userDisplayName = name
        ..userEmail = 'dummy@gmail.com'
        ..userAvatarURL =
            "https://www.vhv.rs/dpng/d/426-4264903_user-avatar-png-picture-avatar-profile-dummy-transparent.png"
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted;
      await JitsiMeet.joinMeeting(options);
    } catch (error) {
      //print("error: $error");
    }
  }
}
