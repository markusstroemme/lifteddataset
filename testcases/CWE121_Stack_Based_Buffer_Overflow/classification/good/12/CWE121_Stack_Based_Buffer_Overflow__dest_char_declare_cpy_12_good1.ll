define void @anon0() local_unnamed_addr {
dec_label_pc_1daaa:
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = ptrtoint ptr %stack_var_-232 to i64
  %3 = trunc i64 %2 to i8
  %4 = insertvalue [100 x i8] undef, i8 %3, 0
  store [100 x i8] %4, ptr %dataGoodBuffer_-240, align 8
  %5 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %9 = load i64, ptr %5, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = bitcast ptr %stack_var_-120 to ptr
  %12 = call ptr @strcpy(ptr %10, ptr nonnull %11)
  call void @printLine(ptr %10)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1db5c, label %dec_label_pc_1db57

dec_label_pc_1db57:                               ; preds = %dec_label_pc_1daaa
  call void @__stack_chk_fail()
  br label %dec_label_pc_1db5c

dec_label_pc_1db5c:                               ; preds = %dec_label_pc_1db57, %dec_label_pc_1daaa
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5c45b:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

