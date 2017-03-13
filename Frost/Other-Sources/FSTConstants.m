//
//  FSTConstants.m
//  Frost
//
//  Created by Tolotra Raharison on 3/10/17
//  Copyright (c) 2014 Etech. All rights reserved.
//

#import "Frost-Environment.h"

// Use this file to define the values of the variables declared in the header.
// For data types that aren't compile-time constants (e.g. NSURL), use the
// FSTConstantsInitializer function below.

// See Frost-Environment.h for macros that are likely applicable in
// this file. TARGETING_{STAGING,PRODUCTION} and IF_STAGING are probably
// the most useful.

// The values here are just examples.

#ifdef TARGETING_STAGING

//NSString * const FSTAPIKey = @"StagingKey";

#else

//NSString * const FSTAPIKey = @"ProductionKey";

#endif


//NSURL *FSTAPIRoot;
void __attribute__((constructor)) FSTConstantsInitializer()
{
//    FSTAPIRoot = [NSURL URLWithString:IF_STAGING(@"http://myapp.com/api/staging", @"http://myapp.com/api")];
}