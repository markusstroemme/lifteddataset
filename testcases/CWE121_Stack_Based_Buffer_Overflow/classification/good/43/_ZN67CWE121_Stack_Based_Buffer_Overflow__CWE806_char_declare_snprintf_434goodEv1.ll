@global_var_13284 = external constant [3 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_96df:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_9719:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-200 = alloca i64, align 8
  %stack_var_-208 = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-136 to ptr
  store ptr %1, ptr %stack_var_-208, align 8
  %2 = call i64 @anon0(ptr nonnull %stack_var_-208)
  store i64 0, ptr %stack_var_-200, align 8
  %3 = load ptr, ptr %stack_var_-208, align 8
  %4 = call i32 @strlen(ptr %3)
  %5 = bitcast ptr %stack_var_-200 to ptr
  %6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %5, i32 %4, ptr @global_var_13284, ptr %3)
  %7 = load ptr, ptr %stack_var_-208, align 8
  call void @printLine(ptr %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_97f8, label %dec_label_pc_97f3

dec_label_pc_97f3:                                ; preds = %dec_label_pc_9719
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_97f8

dec_label_pc_97f8:                                ; preds = %dec_label_pc_97f3, %dec_label_pc_9719
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_feec:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_ff0f, label %dec_label_pc_ff03

dec_label_pc_ff03:                                ; preds = %dec_label_pc_feec
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_ff0f

dec_label_pc_ff0f:                                ; preds = %dec_label_pc_ff03, %dec_label_pc_feec
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

