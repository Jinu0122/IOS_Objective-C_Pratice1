//
//  ViewController.m
//  FirstTask
//
//  Created by Jinwoo on 2023/06/17.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 라벨생성
    lblText = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    
    [lblText setText:@"hello world"];
    [self.view addSubview:lblText];
    
    UIButton *btnSend = [[UIButton alloc] initWithFrame:CGRectMake(20, 200, 200, 30)];
    [btnSend setBackgroundColor:[UIColor blackColor]];
    [btnSend setTitle:@"클릭하세요!" forState:UIControlStateNormal];
    [btnSend setTitle:@"클릭중입니다~" forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnSend];
    
    // 버튼생성
    [btnSend addTarget:self action:@selector(onBtnTouch:) forControlEvents:UIControlEventTouchUpInside];

    textInputClick = [[UITextField alloc]initWithFrame:CGRectMake(20, 300, 200, 30)];
    [textInputClick setBorderStyle:UITextBorderStyleLine];
    
    [self.view addSubview:textInputClick];
    
    // 텍스트필필드 생성
    [textInputClick addTarget:self action:@selector(onTextFiledChange:) forControlEvents:UIControlEventEditingChanged];
//
}

    
    

- (void)onBtnTouch:(UIButton*)sender // 버튼 클릭시
{
    
    [lblText setText:textInputClick.text];
    
}

- (void)onTextFiledChange:(UITextField*)sender // 텍스트필드가 변환될 시
{
    NSLog(@"onTextFiledChange 탔음");
}

@end


    
