// Noah Kassa
// COSC 3360-10751 Spring semester 2024
// —Operating System Fundamentals
// Third Spring 2024 Assignment: A Post Office

//made and ran on VScode using c++

//compiled using the command: g++ Noah_Kassa3.cpp -lpthread -o OS_Proj3 -fpermissive

//ran using the command: ./OS_Proj3 {# of clerks here} <{input file here}.txt

//be sure to place the input file next to the cpp file and not in the cmake folder

#include <iostream>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <thread>
#include <mutex>
#include <fstream>
#include <sstream>
#include <string>
#include <cstdlib>
#include <unistd.h>


using namespace std;

//global ints that are either used by all threads or track statistics for the final report
static int clerkCount, nfreeClerks, nClients, nWaited;

static stringstream input; //only used to count how many customers are in the file while still allowing it to be read

//initializing the mutex and the condition variables
static pthread_mutex_t waiting;

static pthread_cond_t freeClerks = PTHREAD_COND_INITIALIZER;

// a structure for each thread's specific data 
struct ThreadData{
   
    string clientName = "test "; //the name of the client that the thread is repersenting
    int arrivalDelay = 1; //the arrival time listed by the input file
    int workDelay = 1; //the time it takes to process the thread as given by the input file
    

};

 

void * client(void *ptr){
   
    struct ThreadData* temp = static_cast<ThreadData*>(ptr);

    //initializing local variables for every thread so that they can keep their data from being overwritten
    string name;
    int arrival_Delay;
    int work_Delay;
   

    //assigning all the data to local variables so it doesnt get overwritten
    name = temp->clientName;
    arrival_Delay = temp->arrivalDelay;
    work_Delay = temp->workDelay;
    

    cout << name << " arrives at the post office"<<endl;
    pthread_mutex_lock(&waiting);
    
    if (nfreeClerks == 0)
    {
        //wait (using condition signal waiting for if there is a free clerk) also unlocks the mutex if this happens
        pthread_cond_wait(&freeClerks,&waiting);
        nWaited++;
    }

    nfreeClerks--;
    pthread_mutex_unlock(&waiting);

    cout << name << " gets service"<<endl;
    
    //sleeps for work_Delay seconds
    sleep(work_Delay);

    //wake up and lock the mutex again
    pthread_mutex_lock(&waiting);

    cout << name << " leaves the post office"<<endl;
    
    //free a clerk
    nfreeClerks++;

    //signal a thread to wake up (signal not broadcast)
    pthread_cond_signal(&freeClerks);

    //unlock the mutex
    pthread_mutex_unlock(&waiting);

    return NULL;
}

int main(int argc, char* argv[]) {
    
    //initializing the waiting mutex
    pthread_mutex_init(&waiting,NULL);

    //setting the statistic varables to 0
    nWaited = 0;
    nClients = 0;
    
    //initializing the amount of clerks in the office and how many are available
    clerkCount = atoi(argv[1]);
    nfreeClerks = clerkCount;

    //if 0 clerks are in the office the program exits
    if (clerkCount <= 0)
    {
        cout << "ERROR: # OF clerks ENTERED IS 0 PLEASE TRY AGAIN"<<endl;
        exit(2);
    }

    cout << "-- The post office has " << clerkCount <<" clerk(s) on duty today. --"<<endl;

    //a while loop used to get the amount of clients from the input and stores the data in a stringstream to be accessed later 
    string temp;
    while (getline(cin,temp))
    {
        input << temp<<endl;
        nClients++;
    }
    
    struct ThreadData clientInfo[nClients];
    pthread_t tid[nClients];

    // a for loop that makes a child thread for each client
    for (int i = 0; i < nClients; i++)
    {   
        //initializing the client variables with information from the input file
        input >> clientInfo[i].clientName;
        input >> clientInfo[i].arrivalDelay;
        input >> clientInfo[i].workDelay;

        //making the threads wait for its arrival time to simulate the input
        sleep(clientInfo[i].arrivalDelay);
        
        //create the client thread using the client info
        pthread_create(&tid[i], nullptr, client, (void *) &clientInfo[i]);
    }
    

    //ending all the threads after all clients have been helped
    for (int i = 0; i < nClients; i++)
    {
        pthread_join(tid[i],NULL);
    }
    
    //destroying the mutex after it is not needed anymore
    pthread_mutex_destroy(&waiting);

    //printing the summary report to the terminal
    cout <<"\nSUMMARY REPORT\n"
    << nClients << " patron(s) went to the post office.\n"
    << nWaited <<" patron(s) had to wait before getting service.\n"
    <<(nClients - nWaited)<< " patron(s) did not have to wait.\n";

    return 0;
}
