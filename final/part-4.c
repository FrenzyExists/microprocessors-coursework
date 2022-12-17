#include <stdio.h>




static int remove_duplicates(int* nums, int arr_size)
{

   // your code goes here
   // please note that this function returns the number of items _AFTER_ the removal of duplicates
    int count = 0;
    int i, j;
    for (i = 0; i < arr_size ; i++) {
        // int duplicate = 0;
        // for (j = 0; j < count; j++) {
        //     if (nums[i] == nums[j]) {
        //         duplicate = 1;
        //         break;
        //     }
        // }
        // if (!duplicate) {
        //     nums[count] = nums[i];
        //     count++;
        // }
        if (nums[i] != nums[i+1]) {
            nums[count] = nums[i];
            count++;
        }

    }
    return count;
}

int main(void)
{
    int nums[] = {1,1,2,3,4,4,5,6,6,6};    
    int size = sizeof(nums)/sizeof(nums[0]);
    printf("Original array:\n");
    int i;
    for (i = 0; i < size; i++) {
        // printf("%d ", nums[i]);
    }
    int count = remove_duplicates(nums, size);
    printf("\nAfter removing duplicates from the above sorted array:\n");
    for (i = 0; i < count; i++) {
        printf("%d ", nums[i]);
    }
    printf("\n");
    return 0;
}