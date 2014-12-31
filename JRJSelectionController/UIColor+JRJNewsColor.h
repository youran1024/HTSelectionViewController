//
//  UIColor+JRJNewsColor.h
//  HTMultiTableView
//
//  Created by Mr.Yang on 14-4-11.
//  Copyright (c) 2014年 Mr.Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  系统颜色配置
 *  标注方法 模块名/页面Title/页面中的某个视图的颜色
 */

@interface UIColor (JRJNewsColor)

+ (UIColor *)stockColorWithPrice:(NSNumber *)price withCompare:(NSNumber *)compare;

/*----------------------------------------------------------
 *  Public
 *---------------------------------------------------------*/

#pragma mark - StockColor

//行情绿色
+ (UIColor *)stockGreenColor;
//行情红色
+ (UIColor *)stockRedColor;
//行情灰色
+ (UIColor *)stockGrayColor;

//顶部导航条的背景颜色
+ (UIColor *)guideViewBackColor;

//视图高亮背景轻灰色
+ (UIColor *)lightGraySelectedColor;

//tabBar红色
+ (UIColor *)NavigationBarBackGrounColor;

//系统字体黑色
+ (UIColor *)systemBlackColor;
//系统字体灰色
+ (UIColor *)systemGrayColor;

/*----------------------------------------------------------
 *  投顾项目
 *---------------------------------------------------------*/
//字体轻灰色
+ (UIColor *)fontLightGray;

//线条灰色
+ (UIColor *)lineGrayColor;
//更浅的线条灰色
+ (UIColor *)lightLineGrayColor;
//浅色背景灰色
+ (UIColor *)lightBackGrayColor;

//姓名颜色
+ (UIColor *)userNameBlueColor;


/*----------------------------------------------------------
 *  交易
 *---------------------------------------------------------*/

//  持仓券商名
+ (UIColor *)tradeAccountName;
//  持仓券商账号 姓名
+ (UIColor *)tradeAccountMessage;
//  持仓今日盈亏
+ (UIColor *)tradeNowProfitAndLoss;
//  券商管理详情页
+ (UIColor *)tradeDetailMessage;

/*----------------------------------------------------------
 *  自选股
 *---------------------------------------------------------*/

//  自选股字体颜色
+ (UIColor *)geguTitleColor;
//灰色背景颜色
+ (UIColor *)grayBackGroundColor;

//行情子标题的颜色
+ (UIColor *)stockSubTitleColor;

//sectionViewColor
+ (UIColor *)sectionViewBackGroudColor;
+ (UIColor *)sectionViewTitleColor;

//首页添加自选股按钮背景色
+ (UIColor *)selectionStockViewBackColor;
+ (UIColor *)selectionStockTileColor;

//行情标题栏背景色
+ (UIColor *)stockTitleViewBackGray;
//行情标题背景选中后的颜色f
+ (UIColor *)stockTitleViewBackSelectColor;
//行情标题选中后的标题颜色
+ (UIColor *)stockTitleSelectColor;

//线的颜色
+ (UIColor *)grayLineColor;

//行情页面导航栏的背景颜色
+ (UIColor *)guideViewBackGroundColor;
//行情底部指示器的 背景颜色
+ (UIColor *)stockPromptViewBackGroundColor;

//滑动导航栏滑动块背景颜色
+ (UIColor *)slideViewButtonBackGroundColor;

//通用controller 默认颜色
+ (UIColor *)commonControllerColor;
//sectionViewF10 选中后的背景色
+ (UIColor *)sectionViewHighlightBackGroudColor;
+ (UIColor *)sectionTitleBlue;
+ (UIColor *)sectionViewBottomLineBlueColor;
+ (UIColor *)sectionViewBottomLineGrayColor;

//----
//  tradeColor
+ (UIColor *)controllerBackColor;
//1f1f1f
+ (UIColor *)labelColorBlackColor;
//777777
+ (UIColor *)labelColorGrayColor;
//ececec
+ (UIColor *)grayBackColor;
//#f8f8f8
+ (UIColor *)grayBack1Color;
//
+ (UIColor *)btnDisabledColor;
#pragma mark --登录各个视图颜色
//  label的色值727272
+ (UIColor *)loginLabelColor;
//  线的色值d7d7d7
+ (UIColor *)loginLineColor;
//  登录蓝色字体色值4c86c6
+ (UIColor *)loginBlueColor;
//  找投顾蓝色字体色值e3f7ff
+ (UIColor *)adviserBlueColor;
//  验证码背景色值d8d8d8
+ (UIColor *)loginVerificationCodeBackColor;
//  头像下面label的色值aeaeae
+ (UIColor *)loginHeadImageLableColor;
//  button字体色值de3031(我要认证投资顾问也是这个色值)
+ (UIColor *)loginButtonTitleColor;
//  button选中字体色值999999
+ (UIColor *)loginButtonTitleSelectColor;
//  验证码的字体色值ffffff
+ (UIColor *)loginVerificationCodeTitleColor;
#pragma mark --结束

#pragma mark --我的模块颜色
+ (UIColor *)meLineColor;
+ (UIColor *)meOrangeColor;
+ (UIColor *)meDeepLabelColor;
+ (UIColor *)meInvestAdviserButtomLineColor;
+ (UIColor *)meInvestAdviserButtomBgColor;
+ (UIColor *)meInvestAdviserButtomVLineColor;
+ (UIColor *)meInvestAdviserButtomLabelColor;
#pragma mark --我的模块颜色

#pragma mark-交易

+ (UIColor *)tabBarItemRedColor;

//  选择券商
+ (UIColor *)selectAccountGrayStatus;

//  券商管理无数据 出现点击添加
+ (UIColor *)tradeManageListHaveNoDataAddTitle;
@end
