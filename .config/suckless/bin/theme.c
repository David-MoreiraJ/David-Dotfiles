#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void){

  int flag = 0;

  printf("Choose a theme.\n0 = Exit\n1 = Catppuccin\n2 = light\n");
  scanf("%d", &flag);
  char theme[20];
  char catppuccin[20] = "catppuccin";
  char light[20] = "light";

  switch(flag){
    case 1:
      strcpy(theme,catppuccin);
      break;
    case 2:
      strcpy(theme,light);
      break;
  }

  FILE *arq;
  arq = fopen("/home/anon/.config/suckless/dwm/themes/theme.h","w");
  if(arq == NULL){
    printf("Error opening file.\n");
    system("pause");
    exit(1);
  }
  fprintf(arq,"#include \"/home/anon/.config/suckless/dwm/themes/%s.h\"",theme);
  fclose(arq);

  arq = fopen("/home/anon/.config/suckless/bin/theme.sh","w");
  if(arq == NULL){
    printf("Error opening file.\n");
    system("pause");
    exit(1);
  }
  fprintf(arq,"source /home/anon/.config/suckless/bin/%s.sh",theme);
  fclose(arq);
  printf("Theme applied!\n");  

  return 0;
}
