@global_var_4a96e = external constant [10 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3a546:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3a59e, label %dec_label_pc_3a565

dec_label_pc_3a565:                               ; preds = %dec_label_pc_3a546
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i32 1, ptr %4, align 4
  %5 = add i64 %3, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  %7 = icmp eq i64 %3, 0
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3a59e, label %dec_label_pc_3a591

dec_label_pc_3a591:                               ; preds = %dec_label_pc_3a565
  %8 = inttoptr i64 %3 to ptr
  %9 = call i64 @_ZdlPvm(ptr %8, i64 8)
  store ptr %4, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_3a59e

dec_label_pc_3a59e:                               ; preds = %dec_label_pc_3a591, %dec_label_pc_3a565, %dec_label_pc_3a546
  %10 = load i32, ptr @global_var_630ac, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 5
  %13 = icmp eq i1 %12, false
  store i64 %11, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_3a5b5, label %dec_label_pc_3a5a9

dec_label_pc_3a5a9:                               ; preds = %dec_label_pc_3a59e
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-16.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a5b5

dec_label_pc_3a5b5:                               ; preds = %dec_label_pc_3a5a9, %dec_label_pc_3a59e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

