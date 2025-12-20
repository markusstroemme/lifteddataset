define void @anon0() local_unnamed_addr {
dec_label_pc_526a5:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = bitcast ptr %dataBadBuffer_-128 to ptr
  call void @anon1(ptr nonnull %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_526f0, label %dec_label_pc_526eb

dec_label_pc_526eb:                               ; preds = %dec_label_pc_526a5
  call void @__stack_chk_fail()
  br label %dec_label_pc_526f0

dec_label_pc_526f0:                               ; preds = %dec_label_pc_526eb, %dec_label_pc_526a5
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_52754:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %dataPtr to ptr
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncat(ptr %2, ptr nonnull %3, i32 100)
  call void @printLine(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_527da, label %dec_label_pc_527d5

dec_label_pc_527d5:                               ; preds = %dec_label_pc_52754
  call void @__stack_chk_fail()
  br label %dec_label_pc_527da

dec_label_pc_527da:                               ; preds = %dec_label_pc_527d5, %dec_label_pc_52754
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

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

