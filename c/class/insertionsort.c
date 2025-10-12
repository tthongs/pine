#include <stdio.h>

void insertionsort(int arr[], int n)
{
    for (int i = 1; i < n; ++i) {
        int key = arr[i];
        int j = i - 1;

        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
}



int main()
{
    int arr[1000];
    int i,n;
    printf("Enter size of array:");
    scanf("%d",&n);

    printf("Enter array:");
    for (i=0;i<n;i++){
      scanf("%d",&arr[i]);
    }

    insertionsort(arr, n);

    printf("Sorted array: ");
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
    printf("\n");

    return 0;
}
