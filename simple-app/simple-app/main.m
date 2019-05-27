//
//  main.m
//  simple-app
//
//  Created by Aleksei Kanatev on 26/05/2019.
//  Copyright © 2019 Aleksei Kanatev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int first = 0;
        int second = 0;
        char operation1[] = " ";
        double result = 0.0;
        double average = 0.0;
        
        printf("Введите первое число: ");
        scanf("%i", &first);
        printf("Введите второе число: ");
        scanf("%i", &second);
        printf("Выберите одну из четырех операций ('+', '-', '*', '/'): ");
        scanf("%s", operation1);
        
        if (strncmp(operation1, "+", 1) == 0) {
            result = first + second;
        } else if (strncmp(operation1, "-", 1) == 0 ) {
            result = first - second;
        } else if (strncmp(operation1, "*", 1) == 0 ) {
            result = first * second;
        } else if (strncmp(operation1, "/", 1) == 0 ) {
            result = (double)first / (double)second;
        } else {
            result = 0;
        }
        
        NSLog(@"Первое число %i, второе число %i, выполняемая операция %s, результат: %f", first, second, operation1, result);
        
        average = ((double)first + (double)second + result) / 3;
        
        NSLog(@"Средним числом между %i, %i, и %f будет %f", first, second, result, average);
        
    }
    return 0;
    
}
