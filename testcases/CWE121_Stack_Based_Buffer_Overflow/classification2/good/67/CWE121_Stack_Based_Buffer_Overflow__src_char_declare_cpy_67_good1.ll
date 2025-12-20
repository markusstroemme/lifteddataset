define void @anon1() local_unnamed_addr {
dec_label_pc_8549:
  %dataBuffer_-128 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBuffer_-136 = alloca [100 x i8], align 8
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
  %10 = load i64, ptr %4, align 8
  %11 = trunc i64 %10 to i8
  %12 = insertvalue [100 x i8] undef, i8 %11, 0
  store [100 x i8] %12, ptr %dataBuffer_-136, align 8
  %13 = bitcast ptr %dataBuffer_-136 to ptr
  %14 = load i64, ptr %13, align 8
  call void @anon0(i64 %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_85b6, label %dec_label_pc_85b1

dec_label_pc_85b1:                                ; preds = %dec_label_pc_8549
  call void @__stack_chk_fail()
  br label %dec_label_pc_85b6

dec_label_pc_85b6:                                ; preds = %dec_label_pc_85b1, %dec_label_pc_8549
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_8660:
  %stack_var_-72 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = call ptr @strcpy(ptr nonnull %2, ptr %0)
  call void @printLine(ptr %0)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_86f1, label %dec_label_pc_86ec

dec_label_pc_86ec:                                ; preds = %dec_label_pc_8660
  call void @__stack_chk_fail()
  br label %dec_label_pc_86f1

dec_label_pc_86f1:                                ; preds = %dec_label_pc_86ec, %dec_label_pc_8660
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

