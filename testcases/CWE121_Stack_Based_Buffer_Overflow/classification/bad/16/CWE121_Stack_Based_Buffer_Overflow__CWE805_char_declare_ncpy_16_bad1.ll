define void @anon0() local_unnamed_addr {
dec_label_pc_5502e:
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
  %10 = bitcast ptr %stack_var_-120 to ptr
  %11 = call ptr @strncpy(ptr %9, ptr nonnull %10, i32 99)
  %12 = add i64 %8, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = load i64, ptr %4, align 8
  %15 = inttoptr i64 %14 to ptr
  call void @printLine(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_550cc, label %dec_label_pc_550c7

dec_label_pc_550c7:                               ; preds = %dec_label_pc_5502e
  call void @__stack_chk_fail()
  br label %dec_label_pc_550cc

dec_label_pc_550cc:                               ; preds = %dec_label_pc_550c7, %dec_label_pc_5502e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

