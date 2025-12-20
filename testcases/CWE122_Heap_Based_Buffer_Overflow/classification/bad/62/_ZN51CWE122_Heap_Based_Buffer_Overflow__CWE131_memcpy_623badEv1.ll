@global_var_44d70 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_177ad:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-64 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-64, align 8
  %1 = bitcast ptr %stack_var_-64 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  store i64 0, ptr %stack_var_-56, align 8
  %3 = load i64, ptr %stack_var_-64, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = call ptr @memcpy(ptr %4, ptr nonnull %stack_var_-56, i32 40)
  %6 = load i64, ptr %stack_var_-64, align 8
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  %9 = load i64, ptr %stack_var_-64, align 8
  %10 = inttoptr i64 %9 to ptr
  call void @free(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_1784a, label %dec_label_pc_17845

dec_label_pc_17845:                               ; preds = %dec_label_pc_177ad
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1784a

dec_label_pc_1784a:                               ; preds = %dec_label_pc_17845, %dec_label_pc_177ad
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_178fb:
  %0 = call ptr @malloc(i32 10)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 10
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

