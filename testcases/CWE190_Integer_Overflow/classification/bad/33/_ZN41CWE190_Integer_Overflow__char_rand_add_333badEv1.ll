@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4bc10:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = xor i32 %6, 255
  %storemerge.v = select i1 %3, i32 %7, i32 %6
  %8 = trunc i32 %storemerge.v to i8
  %9 = add i8 %8, 1
  call void @printHexCharLine(i8 %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_4bc9c, label %dec_label_pc_4bc97

dec_label_pc_4bc97:                               ; preds = %dec_label_pc_4bc10
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4bc9c

dec_label_pc_4bc9c:                               ; preds = %dec_label_pc_4bc97, %dec_label_pc_4bc10
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

