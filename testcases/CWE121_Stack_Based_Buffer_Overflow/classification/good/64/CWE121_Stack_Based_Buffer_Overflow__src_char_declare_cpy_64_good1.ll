define void @anon1() local_unnamed_addr {
dec_label_pc_7ec6:
  %dataBuffer_-128 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataBuffer_-128, align 8
  %4 = bitcast ptr %dataBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %5, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds [100 x i8], ptr %dataBuffer_-128, i64 0, i64 0
  call void @anon0(ptr nonnull %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_7f2b, label %dec_label_pc_7f26

dec_label_pc_7f26:                                ; preds = %dec_label_pc_7ec6
  call void @__stack_chk_fail()
  br label %dec_label_pc_7f2b

dec_label_pc_7f2b:                                ; preds = %dec_label_pc_7f26, %dec_label_pc_7ec6
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_7fe0:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = call ptr @strcpy(ptr nonnull %1, ptr %dataVoidPtr)
  call void @printLine(ptr %dataVoidPtr)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_807c, label %dec_label_pc_8077

dec_label_pc_8077:                                ; preds = %dec_label_pc_7fe0
  call void @__stack_chk_fail()
  br label %dec_label_pc_807c

dec_label_pc_807c:                                ; preds = %dec_label_pc_8077, %dec_label_pc_7fe0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_f209:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_f22c, label %dec_label_pc_f220

dec_label_pc_f220:                                ; preds = %dec_label_pc_f209
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_f22c

dec_label_pc_f22c:                                ; preds = %dec_label_pc_f220, %dec_label_pc_f209
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

