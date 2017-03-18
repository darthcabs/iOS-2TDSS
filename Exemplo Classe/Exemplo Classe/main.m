//
//  main.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 03/03/17.
//  Copyright © 2017 David Cardoso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atleta.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atleta *a = [[Atleta alloc]init];
        [a setNome:@"David"];
        [a setIdade:30];
        NSLog(@"Iron Man %@ %d anos",[a getNome],[a getIdade]);
        [a calcBmiWithWeight:91 andHeight:1.79];
        NSLog(@"%@",[a calcPerformanceInWaterWithTimeInHours:1.5 andMeters:4350]);
        
        NSLog(@"\n");
        
        Atleta *a2 = [[Atleta alloc]initWithNome:@"Anakin" andIdade:33];
        NSLog(@"Iron Man %@ %d anos",[a2 getNome],[a2 getIdade]);
        [a2 calcBmiWithWeight:75 andHeight:1.85];
        NSLog(@"%@",[a2 calcPerformanceInWaterWithTimeInHours:1.5 andMeters:7000]);
    }
    return 0;
}
