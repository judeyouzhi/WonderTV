//
//  Global.h
//  WonderTV
//
//  Created by JudeYou on 9/7/15.
//  Copyright (c) 2015 HKNTV. All rights reserved.
//

#ifndef WonderTV_Global_h
#define WonderTV_Global_h


#import <Foundation/Foundation.h>

#define NotificationInSinaLogin @"NotificationInSinaLogin"
#define NotificationInQQLogin @"NotificationInQQLogin"
#define NotificationInWXLogin @"NotificationInWXLogin"

#define NotificationLoginSuccess @"NotificationLoginSuccess"
#define NotificationUserInfoUpdated @"NotificationUserInfoUpdated"

#define IPHONE_4_HEIGHT 480
#define IPHONE_5_HEIGHT 568.0
#define IPHONE_6_HEIGHT 667.0
#define IPHONE_6P_HEIGHT 736.0

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define SCREEN_WIDTH    ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT    ([UIScreen mainScreen].bounds.size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4 (IS_IPHONE && SCREEN_MAX_LENGTH == IPHONE_4_HEIGHT)
#define IS_IPHONE_5_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH <= IPHONE_5_HEIGHT)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == IPHONE_6_HEIGHT)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == IPHONE_6P_HEIGHT)


//#define LoginStatus @"LoginStatus"

#define UserInfo @"UserInfo"
#define NetworkImplement @"NetworkImplement"

#define DeviceVeriosn [[UIDevice currentDevice].systemVersion doubleValue]

#define PureDeviceVersion

//152412F7F7CD4EB6F828CD29AE274E35
#define TalkingDataAPPID @"9BB31C13896CF1DBF125FA8764AABB53"
#define TalkingDataChannelID @"Apple_Store"

#define TD_EventID_RequestDownloadSuccessed @"RequestDownloadSuccessed"
#define TD_EventID_DownLoadFinished @"DownLoadFinished"
#define TD_EventID_ScreenModeChangedByClick @"ScreenModeChangedByClick"
#define TD_EventID_ScreenModeChangedByGravity @"ScreenModeChangedByGravity"
#define TD_EventID_PlayVideo @"PlayVideo"
#define TD_EventID_FavoriteChannel @"FavoriteChannel"
#define TD_EventID_ThumbsUp @"ThumbsUp"
#define TD_EventID_SelectChannel @"SelectChannel"
#define TD_EventID_ChangeResolution @"ChangeResolution"
#define TD_EventID_ChangeSubtitle @"ChangeSubtitle"
#define TD_EventID_UserLoginSuccessed @"UserLoginSuccessed"
#define TD_EventID_UserLoginFailed @"UserLoginFailed"
#define TD_EventID_PV @"PV"
#define TD_EventID_UV @"UV"

#define DOWNLOAD_TASK_PROGRESSED @"download_task_progressed"


#define BaseUrl [[[NSUserDefaults standardUserDefaults]objectForKey:NetworkImplement]objectForKey:@"BaseUrl"]
#define SSOUrl [[[NSUserDefaults standardUserDefaults]objectForKey:NetworkImplement]objectForKey:@"SSOUrl"]
#define UMSUrl [[[NSUserDefaults standardUserDefaults]objectForKey:NetworkImplement]objectForKey:@"UMSUrl"]

#endif
