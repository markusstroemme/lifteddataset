define void @anon0() local_unnamed_addr {
dec_label_pc_4caf0:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-232 = alloca i64, align 8
  %dataBadBuffer_-304 = alloca [50 x i8], align 8
  %stack_var_-296 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4cb36, label %dec_label_pc_4cb1c

dec_label_pc_4cb1c:                               ; preds = %dec_label_pc_4caf0
  %3 = ptrtoint ptr %stack_var_-296 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [50 x i8] undef, i8 %4, 0
  store [50 x i8] %5, ptr %dataBadBuffer_-304, align 8
  %6 = bitcast ptr %dataBadBuffer_-304 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4cb4e

dec_label_pc_4cb36:                               ; preds = %dec_label_pc_4caf0
  %9 = ptrtoint ptr %stack_var_-232 to i64
  %10 = trunc i64 %9 to i8
  %11 = insertvalue [50 x i8] undef, i8 %10, 0
  store [50 x i8] %11, ptr %dataBadBuffer_-304, align 8
  %12 = bitcast ptr %dataBadBuffer_-304 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  store ptr %12, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4cb4e

dec_label_pc_4cb4e:                               ; preds = %dec_label_pc_4cb36, %dec_label_pc_4cb1c
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %15 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %16 = load i64, ptr %.pre-phi.reload, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = call ptr @memmove(ptr %17, ptr nonnull %stack_var_-120, i32 100)
  %19 = add i64 %16, 99
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  %21 = load i64, ptr %.pre-phi.reload, align 8
  %22 = inttoptr i64 %21 to ptr
  call void @printLine(ptr %22)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_4cbb5, label %dec_label_pc_4cbb0

dec_label_pc_4cbb0:                               ; preds = %dec_label_pc_4cb4e
  call void @__stack_chk_fail()
  br label %dec_label_pc_4cbb5

dec_label_pc_4cbb5:                               ; preds = %dec_label_pc_4cbb0, %dec_label_pc_4cb4e
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6decb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

