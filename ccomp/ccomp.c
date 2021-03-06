#include<stdio.h>

int vis[1000]; //check if zero
int graph[1000][1000];
int ans=0;

int dfs(int c, int n)
{
	int i,flag=0;
	vis[c]=1;
	printf("%d ", c+1);
	for(i=0;i<n;i++)
	{
		if(vis[i]!=1 && graph[c][i]!=0)
		{
			dfs(i, n);
		}
	}
	return(0);
}

int ccomp(int n, int v, int a[], int b[])
{
	int i,j;
	

	for(i=0;i<n;i++)
		for(j=0;j<n;j++)
			graph[i][j]=0;
	
	for(i=0;i<v;i++)
	{
		// printf("enter the 2 nodes b/w which edges are there:\n");
		// scanf("%d %d", &a, &b);
		graph[a[v]-1][b[v]-1]++;
		graph[b[v]-1][a[v]-1]++;
	}

	for(i=0;i<n;i++)
		if(vis[i]!=1)
		{
			ans++;
			printf("\n");
			dfs(i, n);
		}
	// fflush(stdout);

	// printf("\n\n%d\n", ans);

	return(0);
}
