#include <ICARUS/Top/ICARUSTopologyDefs.hpp>
#include <Fw/Time/Time.hpp>
#include <signal.h>
#include <cstdio>

static volatile bool s_running = true;

void signalHandler(int signum) {
    s_running = false;
}

int main(int argc, char* argv[]) {
    ICARUS::TopologyState state;
    
    // Set up signal handler
    signal(SIGINT, signalHandler);
    signal(SIGTERM, signalHandler);
    
    printf("ICARUS-OBC Starting...\n");
    
    ICARUS::setupTopology(state);
    
    printf("ICARUS-OBC Running. Press Ctrl-C to exit.\n");
    
    // Wait until signal received
    Fw::TimeInterval interval(1, 0);
    while (s_running) {
        Os::Task::delay(interval);
    }
    
    printf("ICARUS-OBC Shutting down...\n");
    ICARUS::teardownTopology(state);
    printf("ICARUS-OBC Exited.\n");
    
    return 0;
}
