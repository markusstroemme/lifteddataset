define void @anon0() local_unnamed_addr {
dec_label_pc_4231f:
  %.reg2mem = alloca i64, align 8
  %stack_var_-200.0.reg2mem = alloca ptr, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_42363, label %dec_label_pc_4234b

dec_label_pc_4234b:                               ; preds = %dec_label_pc_4231f
  %3 = bitcast ptr %stack_var_-184 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-200.0.reg2mem, align 8
  br label %dec_label_pc_42363

dec_label_pc_42363:                               ; preds = %dec_label_pc_4234b, %dec_label_pc_4231f
  %stack_var_-200.0.reload = load ptr, ptr %stack_var_-200.0.reg2mem, align 8
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  store [50 x i8] [i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef], ptr %dataBadBuffer_-192, align 8
  %5 = bitcast ptr %dataBadBuffer_-192 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = icmp ult i64 %6, 100
  %8 = ptrtoint ptr %stack_var_-200.0.reload to i64
  br i1 %7, label %dec_label_pc_4238a.lr.ph, label %dec_label_pc_423c0

dec_label_pc_4238a.lr.ph:                         ; preds = %dec_label_pc_42363
  %9 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %6, ptr %.reg2mem, align 8
  br label %dec_label_pc_4238a

dec_label_pc_4238a:                               ; preds = %dec_label_pc_4238a.lr.ph, %dec_label_pc_4238a
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = add i64 %.reload, %8
  %11 = add i64 %.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = load i64, ptr %5, align 8
  %16 = trunc i64 %15 to i8
  %17 = add i8 %16, 1
  %18 = insertvalue [50 x i8] undef, i8 %17, 0
  store [50 x i8] %18, ptr %dataBadBuffer_-192, align 8
  %19 = load i64, ptr %5, align 8
  %20 = icmp ult i64 %19, 100
  store i64 %19, ptr %.reg2mem, align 8
  br i1 %20, label %dec_label_pc_4238a, label %dec_label_pc_423c0

dec_label_pc_423c0:                               ; preds = %dec_label_pc_4238a, %dec_label_pc_42363
  %21 = add i64 %8, 99
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  call void @printLine(ptr %stack_var_-200.0.reload)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_423f2, label %dec_label_pc_423ed

dec_label_pc_423ed:                               ; preds = %dec_label_pc_423c0
  call void @__stack_chk_fail()
  br label %dec_label_pc_423f2

dec_label_pc_423f2:                               ; preds = %dec_label_pc_423ed, %dec_label_pc_423c0
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6dead:
  ret i32 1
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

