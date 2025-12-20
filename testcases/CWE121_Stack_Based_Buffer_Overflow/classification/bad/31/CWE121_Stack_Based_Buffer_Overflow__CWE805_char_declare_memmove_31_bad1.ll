define void @anon0() local_unnamed_addr {
dec_label_pc_4d723:
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %dataBadBuffer_-200 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-184 to i64
  %2 = bitcast ptr %stack_var_-184 to ptr
  store i8 0, ptr %2, align 8
  %3 = trunc i64 %1 to i8
  %4 = insertvalue [50 x i8] undef, i8 %3, 0
  store [50 x i8] %4, ptr %dataBadBuffer_-200, align 8
  %5 = bitcast ptr %dataBadBuffer_-200 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i8
  %8 = insertvalue [50 x i8] undef, i8 %7, 0
  store [50 x i8] %8, ptr %dataBadBuffer_-192, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = bitcast ptr %dataBadBuffer_-192 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = call ptr @memmove(ptr %12, ptr nonnull %stack_var_-120, i32 100)
  %14 = add i64 %11, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = load i64, ptr %10, align 8
  %17 = inttoptr i64 %16 to ptr
  call void @printLine(ptr %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_4d7dc, label %dec_label_pc_4d7d7

dec_label_pc_4d7d7:                               ; preds = %dec_label_pc_4d723
  call void @__stack_chk_fail()
  br label %dec_label_pc_4d7dc

dec_label_pc_4d7dc:                               ; preds = %dec_label_pc_4d7d7, %dec_label_pc_4d723
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

