function runOnce  {
  { /usr/bin/time $2 ; } 2> /tmp/o 1> /dev/null
  printf "$1 = "
  cat /tmp/o | awk -v N=1 '{print $N"s"}'
}

function run {
  echo ""
  runOnce "$1" "$2"
  runOnce "$1" "$2"
  runOnce "$1" "$2"
}

run "Ruby YJIT" "miniruby --yjit ./ruby/code.rb 40"
run "Kotlin" "java -jar kotlin/code.jar 40"
run "C" "./c/code 40"
run "Go" "./go/code 40"
run "Rust" "./rust/target/release/code 40"
run "Node" "node ./js/code.js 40"
run "Bun" "bun ./js/code.js 40"
run "Deno" "deno ./js/code.js 40"
run "PyPy" "pypy ./py/code.py 40"
run "Java" "java jvm.code 40"
run "Scala" "./scala/code 40"
run "Ruby" "ruby ./ruby/code.rb 40"
run "PHP JIT" "php -dopcache.enable_cli=1 -dopcache.jit=on ./php/code.php 40"
run "PHP" "php ./php/code.php 40"
run "R" "Rscript ./r/code.R 40"
run "Python" "python3 ./py/code.py 40"
run "Zig" "./zig/code 40"
run "Dart" "./dart/code 40"
run "D" "./d/code 40" 
run "Odin" "./odin/code 40"
run "Objective-C" "./objc/code 40"
run "Fortran" "./fortran/code 40" 
run "LuaJIT" "luajit ./lua/code 40"
run "Lua" "lua ./lua/code.lua 40"
run "Swift" "./swift/code 40"
run "Julia" "julia ./julia/code.jl 40"
run "Ruby" "ruby ./ruby/code.rb 40"
