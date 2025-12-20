@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32
@global_var_7f05c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_294f0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-832.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_7f05c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-832.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_29535, label %dec_label_pc_29524

dec_label_pc_29524:                               ; preds = %dec_label_pc_294f0
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %4, ptr %stack_var_-832.0.reg2mem, align 8
  br label %dec_label_pc_29535

dec_label_pc_29535:                               ; preds = %dec_label_pc_29524, %dec_label_pc_294f0
  %stack_var_-832.0.reload = load i64, ptr %stack_var_-832.0.reg2mem, align 8
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = inttoptr i64 %stack_var_-832.0.reload to ptr
  %7 = call ptr @memcpy(ptr %6, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %8 = load i64, ptr %6, align 8
  call void @printLongLongLine(i64 %8)
  %9 = icmp eq i64 %stack_var_-832.0.reload, 0
  br i1 %9, label %dec_label_pc_29595, label %dec_label_pc_29586

dec_label_pc_29586:                               ; preds = %dec_label_pc_29535
  %10 = ptrtoint ptr %stack_var_-824 to i64
  %11 = and i64 %10, 4294967288
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %6, ptr %12)
  br label %dec_label_pc_29595

dec_label_pc_29595:                               ; preds = %dec_label_pc_29586, %dec_label_pc_29535
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_295aa, label %dec_label_pc_295a5

dec_label_pc_295a5:                               ; preds = %dec_label_pc_29595
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_295aa

dec_label_pc_295aa:                               ; preds = %dec_label_pc_295a5, %dec_label_pc_29595
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

