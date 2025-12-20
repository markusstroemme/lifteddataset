@global_var_44d70 = external constant [4 x i8]
@global_var_5b018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c5f8:
  %stack_var_-64.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_5b018, align 4
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_c644, label %dec_label_pc_c625

dec_label_pc_c625:                                ; preds = %dec_label_pc_c5f8
  %3 = call ptr @malloc(i32 10)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_c644, label %dec_label_pc_c63a

dec_label_pc_c63a:                                ; preds = %dec_label_pc_c625
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c644:                                ; preds = %dec_label_pc_c625, %dec_label_pc_c5f8
  %stack_var_-64.0.reload = load i64, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %7 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-56, i32 40)
  %9 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  call void @free(ptr %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_c6b2, label %dec_label_pc_c6ad

dec_label_pc_c6ad:                                ; preds = %dec_label_pc_c644
  call void @__stack_chk_fail()
  br label %dec_label_pc_c6b2

dec_label_pc_c6b2:                                ; preds = %dec_label_pc_c6ad, %dec_label_pc_c644
  ret void
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

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

