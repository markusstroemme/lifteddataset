define void @anon0() local_unnamed_addr {
dec_label_pc_427c1:
  %.reg2mem = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-184 to ptr
  store i8 0, ptr %1, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store [50 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataBadBuffer_-192, align 8
  %3 = bitcast ptr %dataBadBuffer_-192 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = icmp ult i64 %4, 100
  %6 = ptrtoint ptr %stack_var_-184 to i64
  br i1 %5, label %dec_label_pc_42829.lr.ph, label %dec_label_pc_4285f

dec_label_pc_42829.lr.ph:                         ; preds = %dec_label_pc_427c1
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %4, ptr %.reg2mem, align 8
  br label %dec_label_pc_42829

dec_label_pc_42829:                               ; preds = %dec_label_pc_42829.lr.ph, %dec_label_pc_42829
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %6
  %9 = add i64 %.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = load i64, ptr %3, align 8
  %14 = trunc i64 %13 to i8
  %15 = add i8 %14, 1
  %16 = insertvalue [50 x i8] undef, i8 %15, 0
  store [50 x i8] %16, ptr %dataBadBuffer_-192, align 8
  %17 = load i64, ptr %3, align 8
  %18 = icmp ult i64 %17, 100
  store i64 %17, ptr %.reg2mem, align 8
  br i1 %18, label %dec_label_pc_42829, label %dec_label_pc_4285f

dec_label_pc_4285f:                               ; preds = %dec_label_pc_42829, %dec_label_pc_427c1
  %19 = add i64 %6, 99
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  call void @printLine(ptr nonnull %1)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_42891, label %dec_label_pc_4288c

dec_label_pc_4288c:                               ; preds = %dec_label_pc_4285f
  call void @__stack_chk_fail()
  br label %dec_label_pc_42891

dec_label_pc_42891:                               ; preds = %dec_label_pc_4288c, %dec_label_pc_4285f
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

declare i64 @__readfsqword(i64) local_unnamed_addr

