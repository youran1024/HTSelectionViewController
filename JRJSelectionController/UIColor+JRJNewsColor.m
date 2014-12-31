//
//  UIColor+JRJNewsColor.m
//  HTMultiTableView
//
//  Created by Mr.Yang on 14-4-11.
//  Copyright (c) 2014年 Mr.Yang. All rights reserved.
//

#import "UIColor+JRJNewsColor.h"
#import "UIColor+ColorExtension.h"

@implementation UIColor (JRJNewsColor)

+ (UIColor *)systemBlackColor
{
    return HTHexColor(0x595959);
}

+ (UIColor *)systemGrayColor
{
    return HTHexColor(0x727272);
}

+ (UIColor *)lightLineGrayColor
{
    return [UIColor colorWithHEX:0xe9e9e9];
}

+ (UIColor *)lightBackGrayColor
{
    return HTHexColor(0xf0f0f0);
}

+ (UIColor *)userNameBlueColor
{
    return HTHexColor(0x4c86c6);
}

/*----------------------------------------------------------
 *  交易
 *---------------------------------------------------------*/
//  持仓券商名
+ (UIColor *)tradeAccountName
{
    return [UIColor colorWithHEX:0x595959];
}

//  持仓券商账号 姓名
+ (UIColor *)tradeAccountMessage
{
    return [UIColor colorWithHEX:0x9a9a9a];
}

//  持仓今日盈亏
+ (UIColor *)tradeNowProfitAndLoss
{
    return [UIColor colorWithHEX:0xfe7e76];
}

//  券商管理详情页
+ (UIColor *)tradeDetailMessage
{
    return [UIColor colorWithHEX:0x004598];
}


/*----------------------------------------------------------
 *  ****
 *---------------------------------------------------------*/
+ (UIColor *)lineGrayColor
{
    return [UIColor colorWithHEX:0xd0d0d0];
}

+ (UIColor *)guideViewBackColor
{
    return [UIColor colorWithHEX:0xf8f8f8];
}

+ (UIColor *)lightGraySelectedColor
{
    return [UIColor flashColorWithRed:246 green:246 blue:246 alpha:1];
}

+ (UIColor *)NavigationBarBackGrounColor
{
    return [UIColor colorWithHEX:0xc40014];
}

+ (UIColor *)fontLightGray
{
    return [UIColor colorWithHEX:0xb2b2b2];
}

//  首页
+ (UIColor *)headerViewPromptColor
{
    return [UIColor colorWithHEX:0x8b8b8b];
}

+ (UIColor *)headerViewSubTitleColor
{
    return [UIColor colorWithHEX:0x1f1f1f];
}

+ (UIColor *)sectionViewBackGroudColor
{
    return [UIColor flashColorWithRed:246 green:246 blue:246 alpha:1];
}

+ (UIColor *)sectionViewTitleColor
{
    return [UIColor colorWithHEX:0x666666];
}

//===============
+ (UIColor *)selectionStockViewBackColor
{
    return [UIColor flashColorWithRed:233 green:241 blue:251 alpha:1];
}
+ (UIColor *)selectionStockTileColor
{
    return [UIColor colorWithHEX:0x3685d8];
}

+ (UIColor *)informationTitleGray
{
    return [UIColor flashColorWithRed:164 green:164 blue:164 alpha:1];
}

+ (UIColor *)informationDateGray
{
    return [UIColor flashColorWithRed:207 green:207 blue:207 alpha:1];
}

+ (UIColor *)stockSubTitleColor
{
    return [self flashColorWithRed:0x8b green:0x8b blue:0x8b alpha:1];
}

+ (UIColor *)stockGreenColor
{
    return [UIColor colorWithHEX:0x47bd8a];
}

+ (UIColor *)stockRedColor
{
    return [UIColor colorWithHEX:0xdd5858];
}

+ (UIColor *)stockGrayColor
{
    return [self colorWithHEX:0x595959];//0x999999
}

+ (UIColor *)stockTitleViewBackGray
{
    return [UIColor colorWithRed:231/255.0f green:231/255.0f blue:231/255.0f alpha:1];
}

+ (UIColor *)stockTitleViewBackSelectColor
{
    return [UIColor colorWithHEX:0xf7f7f7];
}

+ (UIColor *)stockTitleSelectColor
{
    return [UIColor colorWithHEX:0x4a92d9];
}

+ (UIColor *)geguTitleColor
{
    return [UIColor colorWithHEX:0x666666];
}

+ (UIColor *)geguButtonBackColor
{
    return [UIColor colorWithHEX:0xf3f3f3];
}

+ (UIColor *)geguButtonHighLightColor
{
    return [UIColor colorWithHEX:0xe9e9e9];
}

+ (UIColor *)zijinTitleColor
{
    return [UIColor colorWithHEX:0x999999];
}

+ (UIColor *)zijinTitleViewBackColor
{
    return [UIColor colorWithHEX:0xfafafa];
}

+ (UIColor *)grayLineColor
{
    return [UIColor colorWithHEX:0xdddddd];
}

+ (UIColor *)grayBackGroundColor
{
    return [UIColor flashColorWithRed:236 green:236 blue:236 alpha:1];
}

+ (UIColor *)commonControllerColor
{
    return [UIColor flashColorWithRed:0xf5 green:0xf5 blue:0xf5 alpha:1];
}

+ (UIColor *)guideViewBackGroundColor
{
    return [UIColor flashColorWithRed:246 green:246 blue:246 alpha:1];
}

+ (UIColor *)stockPromptViewBackGroundColor
{
    return [UIColor flashColorWithRed:249 green:249 blue:249 alpha:1];
}

+ (UIColor *)slideViewButtonBackGroundColor
{
    return [UIColor colorWithHEX:0xc30114];
}

+ (UIColor *)stockColorWithPrice:(NSNumber *)price withCompare:(NSNumber *)compare
{
    if ([price floatValue] == 0) {
        return [UIColor stockGrayColor];
    }

    CGFloat fPrice = [price floatValue];
    CGFloat fCompare = [compare floatValue];
    if (fPrice > fCompare) {
        return [UIColor stockRedColor];
    } else if (fPrice < fCompare) {
        return [UIColor stockGreenColor];
    } else {
        return [UIColor stockGrayColor];
    }
    
}

+ (UIColor *)sectionViewHighlightBackGroudColor
{
    return [UIColor flashColorWithRed:233 green:241 blue:251 alpha:1];
}

+ (UIColor *)sectionTitleBlue
{
    return [UIColor flashColorWithRed:85 green:136 blue:212 alpha:1];
}

+ (UIColor *)sectionViewBottomLineGrayColor
{
    return [UIColor flashColorWithRed:236 green:236 blue:236 alpha:1];
}

+ (UIColor *)sectionViewBottomLineBlueColor
{
    return [UIColor flashColorWithRed:178 green:199 blue:226 alpha:1];
}

#pragma mark --登录各个视图颜色
//  label的色值727272
+ (UIColor *)loginLabelColor
{
    return [UIColor colorWithHEX:0x727272];
}
//  线的色值d7d7d7
+ (UIColor *)loginLineColor
{
    return [UIColor colorWithHEX:0xd7d7d7];
}
//  登录蓝色字体色值4c86c6
+ (UIColor *)loginBlueColor
{
    return [UIColor colorWithHEX:0x4c86c6];
}
//  找投顾蓝色字体色值e3f7ff
+ (UIColor *)adviserBlueColor
{
    return [UIColor colorWithHEX:0xe3f7ff];
}
//  倒计时背景色值d8d8d8
+ (UIColor *)loginVerificationCodeBackColor
{
    return [UIColor colorWithHEX:0xd8d8d8];
}
//  头像下面label的色值aeaeae
+ (UIColor *)loginHeadImageLableColor
{
    return [UIColor colorWithHEX:0xaeaeae];
}
//  button字体色值de3031(我要认证投资顾问也是这个色值)
+ (UIColor *)loginButtonTitleColor
{
    return [UIColor colorWithHEX:0xde3031];
}
//  button选中字体色值999999
+ (UIColor *)loginButtonTitleSelectColor;
{
    return [UIColor colorWithHEX:0x999999];
}
//  倒计时的字体色值ffffff
+ (UIColor *)loginVerificationCodeTitleColor
{
    return [UIColor colorWithHEX:0xffffff];
}
#pragma mark --结束

#pragma mark --我的模块颜色
+ (UIColor *)meLineColor
{
    return [UIColor colorWithHEX:0xe9e9e9];
}

+ (UIColor *)meOrangeColor
{
    return [UIColor colorWithHEX:0xfcaf33];
}

+ (UIColor *)meDeepLabelColor
{
    return [UIColor colorWithHEX:0x595959];
}

+ (UIColor *)meInvestAdviserButtomLineColor
{
    return [UIColor colorWithHEX:0xb3b3b3];
}

+ (UIColor *)meInvestAdviserButtomBgColor
{
    return [UIColor flashColorWithRed:251 green:251 blue:251 alpha:0.75];
}

+ (UIColor *)meInvestAdviserButtomVLineColor
{
    return [UIColor colorWithHEX:0xe0e0e0];
}

+ (UIColor *)meInvestAdviserButtomLabelColor
{
    return [UIColor colorWithHEX:0xcccccc];
}

#pragma mark --结束

#pragma mark-交易

+ (UIColor *)tabBarItemRedColor
{
    return [UIColor colorWithHEX:0xc40014];
}

//  选择券商
+ (UIColor *)selectAccountGrayStatus
{
    return [UIColor colorWithHEX:0xa7a5a5];
}

//  券商管理无数据 出现点击添加
+ (UIColor *)tradeManageListHaveNoDataAddTitle
{
    return [UIColor colorWithHEX:0x589ae0];
}
@end
