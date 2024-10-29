//
//  ViewController.h
//  sabiasque
//
//  Created by Cristhian Jesus Valadez Sanchez on 28/10/24.
//

// ViewController.h
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *factLabel;
@property (strong, nonatomic) NSArray *factsCategory1;
@property (strong, nonatomic) NSArray *factsCategory2;
@property (strong, nonatomic) NSArray *factsCategory3;
@property (nonatomic) NSInteger selectedCategory;

- (IBAction)showRandomFact:(id)sender;

@end


