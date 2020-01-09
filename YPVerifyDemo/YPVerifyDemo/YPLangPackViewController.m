//
//  YPLangPackViewController.m
//  YPVerifyDemo
//
//  Created by daizq on 2019/5/9.
//  Copyright © 2019 QiPeng. All rights reserved.
//

#import "YPLangPackViewController.h"
#import "CommonToastHUD.h"
#import <YPCaptchaSDK/YPCaptchaSDK.h>

@interface YPLangPackViewController ()
@property (weak, nonatomic) IBOutlet UITextField *c2;
@property (weak, nonatomic) IBOutlet UITextField *c3;
@property (weak, nonatomic) IBOutlet UITextField *c4;

@end

@implementation YPLangPackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)verify:(id)sender {
    
    YPConfigModel *model = [[YPConfigModel alloc] init];
    YPLangPackModel *langPack = [YPLangPackModel new];
    langPack.YPcaptcha_02 = _c2.text;
    langPack.YPcaptcha_03 = _c3.text;
    langPack.YPcaptcha_04 = _c4.text;
    model.langPack = langPack;
    [YPCaptchaSDK verfiy:model
               onLoaded:^{
                   NSLog(@"onLoaded");
               }
              onSuccess:^(NSDictionary *_Nonnull info) {
                  NSLog(@"on success info %@", info);
                  [[CommonToastHUD sharedInstance] showTips:@"验证成功"];
              }
                 onFail:^(NSDictionary *_Nonnull info) {
                     NSLog(@"on fail info %@", info);
                     [[CommonToastHUD sharedInstance] showTips:info[@"msg"]];
                 }];
}

@end
