use Test2::V0;
use Test::Alien;
use Alien::LuaJIT;

alien_ok 'Alien::LuaJIT';

my $run = run_ok([ Alien::LuaJIT->exe, '-v' ])->exit_is(0);
$run->success ? $run->note : $run->diag;

done_testing;
