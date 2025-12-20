define void @anon0() local_unnamed_addr {
dec_label_pc_35578:
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
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %5, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load i64, ptr %4, align 8
  %11 = trunc i64 %10 to i8
  %12 = insertvalue [100 x i8] undef, i8 %11, 0
  store [100 x i8] %12, ptr %dataBuffer_-136, align 8
  %13 = bitcast ptr %dataBuffer_-136 to ptr
  %14 = load i64, ptr %13, align 8
  call void @anon1(i64 %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_355e5, label %dec_label_pc_355e0

dec_label_pc_355e0:                               ; preds = %dec_label_pc_35578
  call void @__stack_chk_fail()
  br label %dec_label_pc_355e5

dec_label_pc_355e5:                               ; preds = %dec_label_pc_355e0, %dec_label_pc_35578
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3566b:
  %stack_var_-72 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = call ptr @strcat(ptr nonnull %2, ptr %0)
  call void @printLine(ptr %0)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_356fc, label %dec_label_pc_356f7

dec_label_pc_356f7:                               ; preds = %dec_label_pc_3566b
  call void @__stack_chk_fail()
  br label %dec_label_pc_356fc

dec_label_pc_356fc:                               ; preds = %dec_label_pc_356f7, %dec_label_pc_3566b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

