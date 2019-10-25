#include <stdio.h>

#include "linkedlist.h"

int main(void)
{
    struct node * list = NULL;
    puts("Printing empty list:");
    print_list(list);

    puts("Adding nums 0 - 999 to list");
    int i;
    for (i = 0; i < 1000; i++)
    {
        list = insert_front(list, i);
    }

    print_list(list);

    list = free_list(list);

    puts("Freeing list");

    print_list(list);

    return 0;
}


