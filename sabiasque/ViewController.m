//
//  ViewController.m
//  sabiasque
//
//  Created by Cristhian Jesus Valadez Sanchez on 28/10/24.
//

// ViewController.m
#import "ViewController.h"

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Datos curiosos para cada categoría
    self.factsCategory1 = @[@"Dato curioso 1 de Categoría 1", @"Dato curioso 2 de Categoría 1", @"Dato curioso 3 de Categoría 1"];
    self.factsCategory2 = @[@"Dato curioso 1 de Categoría 2", @"Dato curioso 2 de Categoría 2", @"Dato curioso 3 de Categoría 2"];
    self.factsCategory3 = @[@"Dato curioso 1 de Categoría 3", @"Dato curioso 2 de Categoría 3", @"Dato curioso 3 de Categoría 3"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Configurar el nombre de la categoría seleccionada
    switch (self.selectedCategory) {
        case 1:
            self.categoryLabel.text = @"Categoría 1";
            break;
        case 2:
            self.categoryLabel.text = @"Categoría 2";
            break;
        case 3:
            self.categoryLabel.text = @"Categoría 3";
            break;
        default:
            break;
    }
    
    // Mostrar un dato curioso aleatorio al cargar la vista
    [self showRandomFact:nil];
}

- (IBAction)showRandomFact:(id)sender {
    NSArray *currentFacts;
    
    // Selecciona el arreglo de datos curiosos correspondiente a la categoría
    switch (self.selectedCategory) {
        case 1:
            currentFacts = self.factsCategory1;
            break;
        case 2:
            currentFacts = self.factsCategory2;
            break;
        case 3:
            currentFacts = self.factsCategory3;
            break;
        default:
            currentFacts = @[];
            break;
    }
    
    // Selecciona un dato curioso aleatorio
    if (currentFacts.count > 0) {
        NSInteger randomIndex = arc4random_uniform((u_int32_t)currentFacts.count);
        self.factLabel.text = currentFacts[randomIndex];
    }
}

@end

