#!/usr/sbin/dtrace -s
 #pragma D option quiet

restify*:::route-done
{
        @[copyinstr(arg1)] = count();
}

tick-120s
{
        exit(0);
}
