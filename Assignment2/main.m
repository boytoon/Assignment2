//
//  main.m
//  Assignment2
//
//  Created by Pichit Laokankana on 2/8/13.
//  Copyright (c) 2013 Pichit Laokankana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(void)
{

    @autoreleasepool {
        Person *person = [[Person alloc] init];
        //Person *person_temp = [[Person alloc] init];
        NSMutableArray*info = [NSMutableArray arrayWithObjects:nil];
        NSMutableArray*info_name = [NSMutableArray arrayWithObjects:nil];
        NSMutableArray*info_lname = [NSMutableArray arrayWithObjects:nil];
        NSMutableArray*info_pnum = [NSMutableArray arrayWithObjects:nil];
        NSDictionary*dictInfo;
        NSArray*sortedArray;
        
        NSString*fname = @"first name";
        NSString*lname = @"last name";
        NSString*pnum = @"number";
        /*int pnumber = 0;
        
        bool temp = true;
        char words [50];
        int pnum;
        int i = 0;
       
        while(temp)
        {
            NSLog(@"Please enter your firstname:");
            scanf("%s",words);
            person.firstName = [[NSString alloc] initWithCString: words encoding: NSUTF8StringEncoding];
            NSLog(@"please enter your lastname:");
            scanf("%s",words);
            person.lastName = [[NSString alloc] initWithCString: words encoding: NSUTF8StringEncoding];
            NSLog(@"please enter your phone number");
            scanf("%d",&pnum);
            person.telNum = pnum;
            NSLog(@"Any name want to be added? 1 if Yes or 2 is No");
            scanf("%d", &i);
            [info addObject:person];   
            if(i == 1){
                temp = true;
            }
            else{
                temp = false;
            }
            //list = [NSDictionary dictionaryWithObjectsAndKeys:person.firstName,fname,person.lastName,lname,person.telNum,pnumber, nil];
         
        }*/

        person._firstName = @"John";
        person._lastName = @"Smith";
        person._telNum = @"92831";
        [info_name addObject:person._firstName];
        [info_lname addObject:person._lastName];
        [info_pnum addObject: person._telNum];
        dictInfo = [NSDictionary dictionaryWithObjectsAndKeys:person._firstName,fname,person._lastName,lname,person._telNum,pnum, nil];
        [info addObject:dictInfo];
        person._firstName = @"Ken";
        person._lastName = @"Postman";
        person._telNum = @"84130";
        [info_name addObject:person._firstName];
        [info_lname addObject:person._lastName];
        [info_pnum addObject: person._telNum];
        dictInfo = [NSDictionary dictionaryWithObjectsAndKeys:person._firstName,fname,person._lastName,lname,person._telNum,pnum, nil];
        [info addObject:dictInfo];
        person._firstName = @"Keith";
        person._lastName = @"Benja";
        person._telNum = @"65743";
        [info_name addObject:person._firstName];
        [info_lname addObject:person._lastName];
        [info_pnum addObject: person._telNum];
        dictInfo = [NSDictionary dictionaryWithObjectsAndKeys:person._firstName,fname,person._lastName,lname,person._telNum,pnum, nil];
        [info addObject:dictInfo];

        for (id obj in info)
        {
            NSLog(@"%@", obj);
        }

        NSSortDescriptor* firstnameDisc = [[NSSortDescriptor alloc]initWithKey:fname ascending:YES];
        NSArray *discriptors = [NSArray arrayWithObjects:firstnameDisc, nil];
        sortedArray = [info sortedArrayUsingDescriptors:discriptors];
        
        //NSArray *sortedArray = [info_name sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        //NSLog(@"start testing program again");
        //NSLog(@"number is %i",person.telNum);
        //person_temp = [info indexOfObject:1];
        // insert code here...
        NSLog(@"sort by first name");
        NSLog(@"array: %@", sortedArray);            //alternative to print out the array
        
        NSLog(@"sort by lastname");
        NSSortDescriptor* lastnameDisc = [[NSSortDescriptor alloc]initWithKey:lname ascending:YES];
        discriptors = [NSArray arrayWithObjects:lastnameDisc, nil];
        sortedArray = [info sortedArrayUsingDescriptors:discriptors];
        
        for (id obj in sortedArray)
        {
            NSLog(@"%@", obj);
        }
        
        NSLog(@"sort by phone number");
        NSSortDescriptor* pnumDisc = [[NSSortDescriptor alloc]initWithKey:pnum ascending:YES];
        discriptors = [NSArray arrayWithObjects:pnumDisc, nil];
        sortedArray = [info sortedArrayUsingDescriptors:discriptors];
        
        for (id obj in sortedArray)
        {
            NSLog(@"%@", obj);
        }

        
    }
    return 0;
}

