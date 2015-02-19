
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *array1 = [[NSArray alloc] initWithObjects:@"5", @"2", @"6", @"3", nil];
        NSArray *array2 = [[NSArray alloc] initWithObjects:@"7", @"1", @"3", @"4", nil];
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self" ascending: YES];
        NSArray *sortedArray1 =  [array1 sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
        NSArray *sortedArray2 =  [array2 sortedArrayUsingDescriptors: [NSArray arrayWithObject: sortOrder]];
        
        NSLog(@"%@,\n %@",sortedArray1,sortedArray2);
        
        for (int i = 0, j = 0 ; i < sortedArray1.count && j < sortedArray2.count ; ) {
            int n1 = [sortedArray1[i] intValue];
            int n2 = [sortedArray2[j] intValue];
            
            if (n1 == n2) {
                NSLog(@"%d ",n1);
                i++; j++;
            }else if( n1 < n2){
                i++;
            }else
                j++;
            
                
        }
        
        
    }
    return 0;
}

