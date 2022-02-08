#include <stdio.h>
#include <windows.h>

typedef struct
{
    int number;
    char name[100];
    int age;
    int class;
} student_info;

int number;
char name[100];
int age;
int class;
char loginname[20] = {"admin"};
char loginpasswd[15] = {"123456"};

student_info *p;
student_info list[1000];

int startdb();
int printallinfo();
int savedb();
int cleardb();
int nextpage();
int checknextpage();
int delinfo();

int copyright()
{
    Sleep(2000);
    system("cls");
    printf("this is made in Zhuxi[ZJFY-202805208]");
}

int crunthinfo()
{
    int i = 0, want = 0;
    scanf("%d", &want);
    for (i = 0; i <= want; i++)
    {
        student_info list[] = {
            {i, "chenfeng", 12, 2012},
        };
    }
    return 0;
}

int login()
{
    char userName[20], passWord[15];
    int Errortime = 0;
no1:
    printf("==->USERNAME:");
    gets(userName);
    printf("==->PASSWORD:");
    gets(passWord);
    if ((strcmp(userName, loginname) == 0) && (strcmp(passWord, loginpasswd) == 0))
    {
        printf("OK Welcome to here!\n");
        Sleep(2000);
        system("cls");
        return 0;
    }
    else
    {
        printf("You are worng!\n");
        Errortime = Errortime + 1;
        if (Errortime == 3)
        {
            return 0;
        }
        else
        {
            goto no1;
        }
    }
}

int loginpage()
{
    Sleep(2000);
    system("cls");
    printf("=================================\n");
    printf("===                           ===\n");
    printf("===          Welcome          ===\n");
    printf("===                           ===\n");
    printf("=================================\n");
    Sleep(2000);
    system("cls");
    printf("=================================\n");
    printf("===  This is student info db  ===\n");
    login();
    return 0;
}

int main()
{
    int i;
    char stu[1];
    startdb();
    loginpage();
back2:
    printf("============Whitch one did you want?==========\n");
    printf("===1:see infomation                             ===\n");
    printf("===2:add infomation                             ===\n");
    printf("===3:del infomation                             ===\n");
    printf("===4:redy add to infomation                     ===\n");
    printf("===5:del all infomation                         ===\n");
    printf("===6:ready to the databases                     ===\n");
back1:
    printf("witch one?:");
    scanf("%d", &i);
    switch (i)
    {
    case 1:
        printf("THis is all of the infomation:\n");
        printallinfo();
        break;

    case 2:
        printallinfo();
        for (i = 0; i < 100; i++)
        {
            p = &list[i];
            if (p->number == 0)
            {
                printf("student number is: %d\n", i + 1);
                printf("Student name is:");
                gets(name);
                printf("Student age is:");
                scanf("%d", &age);
                printf("Student class is:");
                scanf("%d", &class);
                printf("OK\n");
            }
        }
        printallinfo();
        break;

    case 3:
        delinfo();
        break;

    case 4:
        savedb();
        startdb();
        break;

    case 5:
        cleardb();
        break;

    case 6:
        Sleep(2000);
        system("cls");
    back3:
        printf("Are you sure?[Y/N]?");
        gets(stu);
        if (strcmp(stu, "Y") == 0)
        {
            startdb();
            printallinfo();
        }
        else
        {
            if (strcmp(stu, "N") == 0)
            {
                printf("Are you sure?[Y/N]?");
                gets(stu);
                if (strcmp(stu, "Y") == 0)
                {
                    goto back2;
                }
                else
                {
                    if (strcmp(stu, "N") == 0)
                    {
                        goto back3;
                    }
                    else
                    {
                        printf("I don't know! Please again.");
                        goto back3;
                    }
                }
            }
            else
            {
                printf("I don't know! Please again.");
                goto back3;
            }
        }
        if (nextpage() == 1)
            goto back2;
        break;

    default:
        printf("Plese sent it ahain Bad boy!");
        goto back1;
        break;
    }
    if (checknextpage() == 1)
        nextpage();
    return 0;
}

int startdb()
{
    int i;
    FILE *fp;
    fp = fopen("info.txt", "r");
    if (fp == NULL)
    {
        printf("worng!");
        exit(0);
    }
    for (i = 0; i < 100; i++)
    {
        fscanf(fp, "%d%s%d%d", &list[i].number, &list[i].name, &list[i].age, &list[i].class);
        if (fp == NULL)
        {
            printf("worng!");
            exit(0);
            break;
        }
    }
    return 0;
}

int savedb()
{
    int i;
    FILE *fp;
    fp = fopen("info.txt", "w");
    if (fp == NULL)
    {
        printf("worng!");
        exit(0);
    }
    for (i = 0; i < 100; i++)
    {
        fprintf(fp, "%d%s%d%d", &list[i].number, &list[i].name, &list[i].age, &list[i].class);
        if (fp == NULL)
        {
            printf("worng!");
            exit(0);
            break;
        }
    }
    return 0;
}

int cleardb()
{
    int i;
    FILE *fp;
    fp = fopen("info.txt", "w");
    if (fp == NULL)
    {
        printf("worng!");
        exit(0);
    }
    for (i = 0; i < 100; i++)
    {
        fprintf(fp, "%d%s%d%d", NULL, NULL, NULL, NULL);
        if (fp == NULL)
        {
            printf("worng!");
            exit(0);
            break;
        }
    }
    return 0;
}

int printallinfo()
{
    int nu;
    printf("Number\t");
    printf("Name  \t");
    printf("Age   \t");
    printf("Class \n");
    printf("------------------------------------------------\n");
    for (nu = 0; nu < 100; nu++)
    {
        p = &list[nu];
        if (p->number == 0)
            break;
        printf("%6d\t%6s\t%6d\t%6d\n", p->number, p->name, p->age, p->class);
    }
    return 0;
}

int checknextpage()
{
    char chk[1];
    printf("If you want to the meru. Please sent anyone.[Y/N]");
    gets(chk);
    if (strcmp(chk, "Y") == 0)
    {
        return 1;
    }
    return 0;
}

int nextpage()
{
    char stu[1];
back11:
    printf("GO to the meru?[Y/N]");
    gets(stu);
    if (strcmp(stu, "N") == 0)
    {
        printf("Are you sure?[Y/N]?");
        gets(stu);
        if (strcmp(stu, "Y") == 0)
        {
            return 1;
        }
        else
        {
            if (strcmp(stu, "N") == 0)
            {
                return 0;
            }
            else
            {
                printf("I don't know! Please again.");
                goto back11;
            }
        }
    }
    else
    {
        printf("I don't know! Please again.");
        goto back11;
    }
}

int delinfo()
{
    int num, i;
    printf("Whitch one ? Please sent the info's number:");
    scanf("%d", &num);
    FILE *fp;
    fp = fopen("next.txt", "wr");
    if (fp == NULL)
    {
        printf("worng!");
        exit(0);
    }
    for (i = num; i < 100; i++)
    {
        fprintf(fp, "%d%s%d%d", &list[i].number, &list[i].name, &list[i].age, &list[i].class);
        if (fp == NULL)
        {
            printf("worng!");
            exit(0);
            break;
        }
    }
    for (i = num - 1; i < 100; i++)
    {
        fscanf(fp, "%d%s%d%d", &list[i].number, &list[i].name, &list[i].age, &list[i].class);
        if (fp == NULL)
        {
            printf("worng!");
            exit(0);
            break;
        }
    }
    return 0;
}
