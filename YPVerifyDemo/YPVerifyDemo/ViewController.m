//
//  ViewController.m
//  YPVerifyDemo
//
//  Created by daizq on 2019/4/22.
//  Copyright © 2019 QiPeng. All rights reserved.
//

#import "ViewController.h"
#import <YPCaptchaSDK/YPCaptchaSDK.h>
#import "CommonToastHUD.h"

#define kDemoScreenWidth [UIScreen mainScreen].bounds.size.width
#define kDemoScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *expired;
@property (weak, nonatomic) IBOutlet UITextField *lang;
@property (weak, nonatomic) IBOutlet UITextField *width;
@property (weak, nonatomic) IBOutlet UISwitch *showLoadingView;
@property (weak, nonatomic) IBOutlet UITextField *alpha;
@property (weak, nonatomic) IBOutlet UISwitch *useLangPack;
@property (weak, nonatomic) IBOutlet UITextField *langPack1;
@property (weak, nonatomic) IBOutlet UITextField *langPack2;
@property (weak, nonatomic) IBOutlet UITextField *langPack3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)verify:(id)sender {
    
    YPConfigModel *model = [[YPConfigModel alloc] init];
    model.expired = [_expired.text integerValue]?:30;
    model.lang = _lang.text?:@"zh-cn";
    float width = [_width.text floatValue] != 0?[_width.text floatValue]:kDemoScreenWidth * 4 / 5;
    model.frame = CGRectMake((kDemoScreenWidth - width) / 2, kDemoScreenHeight / 2 - width / 2, width, width / 2 + 110);
    model.showLoadingView = _showLoadingView.on;
    model.alpha = [_alpha.text floatValue];
    YPLangPackModel *langPack = nil;
    if (_useLangPack.on) {
        langPack =  [YPLangPackModel new];
        langPack.YPcaptcha_02 = _langPack1.text;
        langPack.YPcaptcha_03 = _langPack2.text;
        langPack.YPcaptcha_04 = _langPack3.text;
        model.langPack = langPack;
    }
    [YPCaptchaSDK verfiy:model
                onLoaded:^{
        
    }
               onSuccess:^(NSDictionary *_Nonnull info) {
        NSLog(@"on success info %@",info);
        [[CommonToastHUD sharedInstance]showTips:@"验证成功"];
    }
                  onFail:^(NSDictionary *_Nonnull info) {
        NSLog(@"on fail info %@",info);
        [[CommonToastHUD sharedInstance]showTips:info[@"msg"]];
    }];
}

@end
