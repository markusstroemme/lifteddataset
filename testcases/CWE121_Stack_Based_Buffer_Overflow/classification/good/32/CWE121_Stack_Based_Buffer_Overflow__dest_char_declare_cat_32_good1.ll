define void @anon0() local_unnamed_addr {
dec_label_pc_1ac2b:
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %dataGoodBuffer_-248 = alloca [100 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-232 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataGoodBuffer_-248, align 8
  %4 = bitcast ptr %dataGoodBuffer_-248 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i8
  %9 = insertvalue [100 x i8] undef, i8 %8, 0
  store [100 x i8] %9, ptr %dataGoodBuffer_-240, align 8
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %11 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %12 to ptr
  %14 = bitcast ptr %stack_var_-120 to ptr
  %15 = call ptr @strcat(ptr %13, ptr nonnull %14)
  call void @printLine(ptr %13)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_1ad04, label %dec_label_pc_1acff

dec_label_pc_1acff:                               ; preds = %dec_label_pc_1ac2b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ad04

dec_label_pc_1ad04:                               ; preds = %dec_label_pc_1acff, %dec_label_pc_1ac2b
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

