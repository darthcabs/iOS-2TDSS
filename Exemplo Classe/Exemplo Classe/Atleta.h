//
//  Atleta.h
//  Exemplo Classe
//
//  Created by Usuário Convidado on 03/03/17.
//  Copyright © 2017 David Cardoso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atleta : NSObject {
    NSString *nome;
    int idade;
}

-(void) setNome:(NSString *) _nome;
-(NSString *) getNome;

-(void) setIdade:(int) _idade;
-(int) getIdade;

-(void) calcBmiWithWeight:(float) weight
                andHeight:(float) height;
-(NSString *) calcPerformanceInWaterWithTimeInHours:(float) hours
                                             andMeters:(float) meters;

-(Atleta *) initWithNome:(NSString *) _nome andIdade:(int) _idade;

@end
