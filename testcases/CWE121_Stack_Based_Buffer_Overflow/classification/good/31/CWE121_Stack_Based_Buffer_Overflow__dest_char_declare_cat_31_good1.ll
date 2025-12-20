define void @anon0() local_unnamed_addr {
dec_label_pc_1aa93:
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %dataGoodBuffer_-248 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-232 to i64
  %2 = bitcast ptr %stack_var_-232 to ptr
  store i8 0, ptr %2, align 8
  %3 = trunc i64 %1 to i8
  %4 = insertvalue [100 x i8] undef, i8 %3, 0
  store [100 x i8] %4, ptr %dataGoodBuffer_-248, align 8
  %5 = bitcast ptr %dataGoodBuffer_-248 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i8
  %8 = insertvalue [100 x i8] undef, i8 %7, 0
  store [100 x i8] %8, ptr %dataGoodBuffer_-240, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = bitcast ptr %stack_var_-120 to ptr
  %14 = call ptr @strcat(ptr %12, ptr nonnull %13)
  call void @printLine(ptr %12)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_1ab39, label %dec_label_pc_1ab34

dec_label_pc_1ab34:                               ; preds = %dec_label_pc_1aa93
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ab39

dec_label_pc_1ab39:                               ; preds = %dec_label_pc_1ab34, %dec_label_pc_1aa93
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

