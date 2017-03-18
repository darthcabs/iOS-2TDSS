//
//  Atleta.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 03/03/17.
//  Copyright © 2017 David Cardoso. All rights reserved.
//

#import "Atleta.h"

@implementation Atleta

-(void) setNome:(NSString *) _nome {
    nome = _nome;
}

-(NSString *) getNome {
    return nome;
}

-(void) setIdade:(int) _idade {
    idade = _idade;
}

-(int) getIdade {
    return idade;
}

-(void) calcBmiWithWeight:(float) weight
                andHeight:(float) height {
    float bmi;
    bmi = weight / (height * height);
    NSLog(@"O IMC de %@ é %0.2f", [self getNome], bmi);
}

-(NSString *) calcPerformanceInWaterWithTimeInHours:(float) hours
                                          andMeters:(float) meters {
    float result = meters / hours;
    return [NSString stringWithFormat:@"O rendimento na água é %0.2f m/h",result];
}

-(Atleta *) initWithNome:(NSString *) _nome andIdade:(int) _idade {
    self = [super init];
    if (self) {
        [self setNome:_nome];
        [self setIdade:_idade];
    }
    return self;
}

@end
