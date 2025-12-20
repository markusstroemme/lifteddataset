define void @anon0() local_unnamed_addr {
dec_label_pc_1d9f6:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-232 = alloca i64, align 8
  %dataBadBuffer_-304 = alloca [50 x i8], align 8
  %stack_var_-296 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1da3c, label %dec_label_pc_1da22

dec_label_pc_1da22:                               ; preds = %dec_label_pc_1d9f6
  %3 = ptrtoint ptr %stack_var_-296 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [50 x i8] undef, i8 %4, 0
  store [50 x i8] %5, ptr %dataBadBuffer_-304, align 8
  %6 = bitcast ptr %dataBadBuffer_-304 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1da54

dec_label_pc_1da3c:                               ; preds = %dec_label_pc_1d9f6
  %9 = ptrtoint ptr %stack_var_-232 to i64
  %10 = trunc i64 %9 to i8
  %11 = insertvalue [50 x i8] undef, i8 %10, 0
  store [50 x i8] %11, ptr %dataBadBuffer_-304, align 8
  %12 = bitcast ptr %dataBadBuffer_-304 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  store ptr %12, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1da54

dec_label_pc_1da54:                               ; preds = %dec_label_pc_1da3c, %dec_label_pc_1da22
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %15 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %16 = load i64, ptr %.pre-phi.reload, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = bitcast ptr %stack_var_-120 to ptr
  %19 = call ptr @strcpy(ptr %17, ptr nonnull %18)
  call void @printLine(ptr %17)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_1daa8, label %dec_label_pc_1daa3

dec_label_pc_1daa3:                               ; preds = %dec_label_pc_1da54
  call void @__stack_chk_fail()
  br label %dec_label_pc_1daa8

dec_label_pc_1daa8:                               ; preds = %dec_label_pc_1daa3, %dec_label_pc_1da54
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

