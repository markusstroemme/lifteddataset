@global_var_b7214 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_a903:
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-184 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-192, align 8
  %4 = bitcast ptr %dataBadBuffer_-192 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = load i64, ptr %4, align 8
  %9 = inttoptr i64 %8 to ptr
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %9, i32 100, ptr @global_var_b7214, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %9)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_a9a7, label %dec_label_pc_a9a2

dec_label_pc_a9a2:                                ; preds = %dec_label_pc_a903
  call void @__stack_chk_fail()
  br label %dec_label_pc_a9a7

dec_label_pc_a9a7:                                ; preds = %dec_label_pc_a9a2, %dec_label_pc_a903
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

