@global_var_13278 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_8ced:
  %stack_var_-168 = alloca i64, align 8
  %dataArray_-176 = alloca [5 x ptr], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-176, align 8
  %3 = bitcast ptr %dataArray_-176 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 49)
  %7 = add i64 %4, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-168 to ptr
  call void @anon0(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_8d6f, label %dec_label_pc_8d6a

dec_label_pc_8d6a:                                ; preds = %dec_label_pc_8ced
  call void @__stack_chk_fail()
  br label %dec_label_pc_8d6f

dec_label_pc_8d6f:                                ; preds = %dec_label_pc_8d6a, %dec_label_pc_8ced
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_8e38:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call i32 @strlen(ptr %5)
  %7 = bitcast ptr %stack_var_-72 to ptr
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %7, i32 %6, ptr @global_var_13278, ptr %5)
  call void @printLine(ptr %5)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_8ee8, label %dec_label_pc_8ee3

dec_label_pc_8ee3:                                ; preds = %dec_label_pc_8e38
  call void @__stack_chk_fail()
  br label %dec_label_pc_8ee8

dec_label_pc_8ee8:                                ; preds = %dec_label_pc_8ee3, %dec_label_pc_8e38
  ret void
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

